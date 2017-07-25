class CoursesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :find_course, only: [:show]
  before_action :find_softwares, only: [:show]

  def index
    @courses = Course.all
  end

  def show
    @lectures = Lecture.where(course: @course).where(visible: true)
    @softwares = Software.where(course: @course)
    @users_lectures = UsersLecture.where(user: current_user)
    # cf before_action
  end

  private

  def find_course
    @course = Course.where(visible: true).find(params[:id])
  end

  def find_softwares
    @courses_softwares = CoursesSoftware.where(course_id: params[:id])
  end
end
