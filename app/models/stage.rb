class Stage < ApplicationRecord
  belongs_to :stagetype
  has_many :users_stages
  has_many :users, through: :users_stages

  def name
    stagetype.title+" - "+timeslot
  end

  rails_admin do
    list do
      field :stagetype
      field :timeslot
      field :visible
      field :users
    end
  end
end
