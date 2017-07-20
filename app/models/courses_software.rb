class CoursesSoftware < ApplicationRecord
  belongs_to :course
  belongs_to :software

  def name
    if course && software
      course.title+"/"+software.title
    end
  end

  rails_admin do
    list do
      field :course
      field :software
    end
  end
end
