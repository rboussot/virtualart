class UsersStage < ApplicationRecord
  belongs_to :user
  belongs_to :stage
  has_many :stages
  has_many :users

  rails_admin do
    list do
      field :user
      field :stage
      field :confirmed
      field :updated_at
    end
  end
end
