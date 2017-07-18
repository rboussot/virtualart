class Lecture < ApplicationRecord
  belongs_to :software
  belongs_to :course
  has_many :users_lectures
  has_many :users, through: :users_lectures
  validates :title, presence: true

  def name
  order+") "+self.software.title+" - "+title
  end
end
