class Timeslot < ApplicationRecord
  has_many :users_courses

  def name
    title
  end

  rails_admin do
    list do
      field :title
      field :visible
    end
  end
end
