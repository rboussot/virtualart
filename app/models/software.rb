class Software < ApplicationRecord
  has_many :lectures
  validates :title, presence: true

  def name
    title
  end
end
