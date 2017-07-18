class Block < ApplicationRecord
  validates :tag, presence: true, uniqueness: :true

  def name
    tag
  end
end
