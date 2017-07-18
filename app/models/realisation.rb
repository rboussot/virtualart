class Realisation < ApplicationRecord
  belongs_to :course
  belongs_to :user
  validates :link, presence: true
  validates :thumbnail, presence: true

  def name
    title
  end
end
