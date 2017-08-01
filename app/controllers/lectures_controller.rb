class LecturesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def show
    @lectures = Lecture.where(course: @course).where(visible: true)
    @softwares = Software.where(course: @course)
    @users_lectures = UsersLecture.where(user: current_user)
    @courses = Course.where(visible: true)
    @lecture = Lecture.find(params[:id])
      respond_to do |format|
        format.html { render 'show', layout: false}
        format.js { }
      end
  end

  private

  def find_course
    @course = Course.where(visible: true).find(params[:id])
  end

  def find_softwares
    @courses_softwares = CoursesSoftware.where(course_id: params[:id])
  end

end
