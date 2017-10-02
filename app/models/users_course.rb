class UsersCourse < ApplicationRecord
  belongs_to :user
  belongs_to :course
  belongs_to :timeslot

  def name
    course.title
  end

  rails_admin do
    list do
      field :user
      field :course
      field :timeslot
      field :confirmed
      field :end
    end
  end

end
