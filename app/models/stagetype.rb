class Stagetype < ApplicationRecord
  has_many :stages
  validates :title, presence: true

  def name
    title
  end

  rails_admin do
    list do
      field :title
      field :description
      field :picture
      field :visible
    end
  end
end
