class UsersLecture < ApplicationRecord
  belongs_to :user
  belongs_to :lecture

  rails_admin do
    list do
      field :user
      field :lecture
      field :note
      field :updated_at
    end
  end
end
