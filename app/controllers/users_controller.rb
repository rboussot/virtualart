class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

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
  end

  def update
    # CF before_action
    @user = current_user
    current_user.update(user_params)
    # Construire users_course
    @course = Course.find(params[:user][:course_ids])
    @timeslot = Timeslot.find(params[:user][:timeslot_ids])
    @users_course = UsersCourse.new
    @users_course.course = @course
    @users_course.timeslot = @timeslot
    @users_course.user = @user
    @users_course.save!
    # Construire users_stage
    @stage = Stage.find(params[:user][:stage_ids])
    @users_stage = UsersStage.new
    @users_stage.stage = @stage
    @users_stage.user = @user
    @users_stage.save!
    # Aller à la page de résultats
    redirect_to edit_user_path(current_user)
  end

  private

  def user_params
    params.require(:user).permit(:firstname, :lastname, :email, :adress, :phone, :birth, :course, :stage, :contact, :timeslot)
  end

end
