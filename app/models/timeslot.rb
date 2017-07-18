class Timeslot < ApplicationRecord
  has_many :users_courses

  def name
    title
  end
end
