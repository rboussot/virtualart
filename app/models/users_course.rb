class UsersCourse < ApplicationRecord
  belongs_to :user
  belongs_to :course
  belongs_to :timeslot

  def name
    user.email+"/"+course.title
  end

  rails_admin do
    list do
      field :user
      field :course
      field :timeslot
      field :confirmed
      field :created_at
      field :updated_at
    end
  end
end
