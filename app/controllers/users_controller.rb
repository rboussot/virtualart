class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:edit, :show]

  def show
    @user = current_user
    @planning = Block.find_by(tag: "planning")
    @tarifs1 = Block.find_by(tag: "tarifs1")
    @tarifs2 = Block.find_by(tag: "tarifs2")
    @infos = Block.find_by(tag: "infos")
    @users_stages = UsersStage.where(user: current_user)
    @ended_courses = UsersCourse.where(user: current_user).find_by(confirmed: true)
    @users_courses = UsersCourse.where(user: current_user)
    @users_courses.each do |users_course|
      if users_course && users_course.end && users_course.end.strftime < Date.today.strftime
        users_course.confirmed = false
        users_course.save!
      end
    end
  end

  def edit
    @user = current_user
    @planning = Block.find_by(tag: "planning")
    @tarifs1 = Block.find_by(tag: "tarifs1")
    @tarifs2 = Block.find_by(tag: "tarifs2")
    @infos = Block.find_by(tag: "infos")
    @courses = Course.where(visible: true)
    @stagetypes = Stagetype.where(visible: true)
    @stages = Stage.where(visible: true)
    @users_courses = UsersCourse.where(user: current_user)
    @users_stages = UsersStage.where(user: current_user)
    @form_info = Block.find_by(tag: "form")
    @users_courses.each do |users_course|
      if users_course && users_course.end && users_course.end.strftime < Date.today.strftime
        users_course.confirmed = false
        users_course.save!
      end
    end
    @disabled_courses = UsersCourse.where(user: current_user).where(confirmed: true).map(&:course_id)
    @disabled_timeslots = UsersCourse.where(user: current_user).where(confirmed: true).map(&:timeslot_id)
    @disabled_stages = UsersStage.where(user: current_user).where(confirmed: true).map(&:stage_id)
  end

  def update
    # CF before_action
    @user = current_user
    current_user.update(user_params)
    # Construire users_course
    UsersCourse.where(user: @user).where(confirmed: false).destroy_all
    if params[:user][:course_ids][1].present?
      if params[:user][:timeslot_ids][1].present?
        params[:user][:course_ids][1..-1].each do |course_id|
          params[:user][:timeslot_ids][1..-1].each do |timeslot_id|
            @course = Course.find(course_id)
            @timeslot = Timeslot.find(timeslot_id)
            @users_course = UsersCourse.new
            @users_course.course = @course
            @users_course.timeslot = @timeslot
            @users_course.user = @user
            unless UsersCourse.where(user: @user).where(course: course_id).where(timeslot: timeslot_id).present?
              @users_course.save!
            end
          end
        end
      end
      # Si jamais un jour on veut utiliser un mailer pour prévenir des envois de formulaire !
      # UserMailer.reservation(@user).deliver_now
    end
    # Construire users_stage
    UsersStage.where(user: @user).where(confirmed: false).destroy_all
    if params[:user][:stage_ids][1].present?
      params[:user][:stage_ids][1..-1].each do |stage_id|
        @stage = Stage.find(stage_id)
        @users_stage = UsersStage.new
        @users_stage.stage = @stage
        @users_stage.user = @user
        unless UsersStage.where(user: @user).where(stage: stage_id).present?
          @users_stage.save!
        end
      end
    end
    # Aller à la page de résultats
    redirect_to user_path(current_user)
  end

  private

  def user_params
    params.require(:user).permit(:firstname, :lastname, :email, :adress, :phone, :birth, :course, :stage, :source, :timeslot)
  end

end
