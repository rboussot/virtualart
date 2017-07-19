class Course < ApplicationRecord
  has_many :lectures
  has_many :realisations
  has_many :users_courses
  has_many :courses_software
  has_many :softwares, through: :courses_software
  has_many :users, through: :users_courses
  validates :title, presence: true

  def name
    title
  end
end
