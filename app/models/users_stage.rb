class UsersStage < ApplicationRecord
  belongs_to :user
  belongs_to :stage
  has_many :stages
  has_many :users
end
