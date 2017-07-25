class Lecture < ApplicationRecord
  belongs_to :software
  belongs_to :course
  has_many :users_lectures
  has_many :users, through: :users_lectures
  validates :title, presence: true

  def name
    if order && software && title
      order+") "+course.title+" - "+title
    end
  end

  rails_admin do
    list do
      field :order
      field :title
      field :course
      field :software
      field :visible
      field :video
      field :description
    end
  end
end
