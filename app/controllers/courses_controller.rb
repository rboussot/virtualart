class CoursesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :find_course, only: [:show]
  before_action :find_softwares, only: [:show]

  def index
    @courses = Course.all
  end

  def show
    @courses = Course.all
    @lectures = Lecture.where(course_id: params[:id])
    @softwares = Software.where(course: @course)
    # cf before_action
  end

  private

  def find_course
    @course = Course.find(params[:id])
  end

  def find_softwares
    @courses_softwares = CoursesSoftware.where(course_id: params[:id])
  end
end
