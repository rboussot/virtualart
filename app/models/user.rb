class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :users_lectures
  has_many :lectures, through: :users_lectures
  has_many :realisations
  has_many :users_stages
  has_many :stages, through: :users_stages
  has_many :users_courses
  has_many :courses, through: :users_courses
  validates :email, presence: true, uniqueness: :true

  def name
    email
  end
end
