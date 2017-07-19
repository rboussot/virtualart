class Software < ApplicationRecord
  has_many :lectures
  has_many :courses_software
  has_many :courses, through: :courses_software
  validates :title, presence: true

  def name
    title
  end
end
