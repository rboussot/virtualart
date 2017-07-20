class Realisation < ApplicationRecord
  belongs_to :course
  belongs_to :user
  validates :link, presence: true
  validates :thumbnail, presence: true

  def name
    title
  end

  rails_admin do
    list do
      field :id
      field :course
      field :user
      field :title
      field :link
      field :thumbnail
    end
  end
end
