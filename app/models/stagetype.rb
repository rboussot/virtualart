class Stagetype < ApplicationRecord
  has_many :stages
  validates :title, presence: true

  def name
    title
  end
end
