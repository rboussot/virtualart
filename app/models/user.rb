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
  has_many :timeslots, through: :users_courses
  validates :email, presence: true, uniqueness: :true

  def name
    email
  end

  rails_admin do
    list do
      field :email
      field :courses
      field :stages
      field :note
      field :tutored_by_id
      field :tutor
      field :firstname
      field :lastname
      field :phone
      field :adress
      field :admin
      field :current_sign_in_at
      field :sign_in_count
    end
  end

  rails_admin do
    edit do
      field :email
      field :firstname
      field :lastname
      field :adress
      field :phone
      field :birth
      field :note
      field :contact
      field :tutored_by_id
      field :tutor
      field :admin
      field :lectures
      field :realisations
      field :stages
      field :courses
    end
  end

  rails_admin do
    show do
      field :email
      field :firstname
      field :lastname
      field :adress
      field :phone
      field :birth
      field :note
      field :contact
      field :tutored_by_id
      field :tutor
      field :admin
      field :lectures
      field :realisations
      field :stages
      field :courses
      field :sign_in_count
      field :current_sign_in_at
      field :last_sign_in_at
      field :remember_created_at
      field :reset_password_sent_at
      field :current_sign_in_ip
      field :last_sign_in_ip
    end
  end
end
