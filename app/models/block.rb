class Block < ApplicationRecord
  validates :tag, presence: true, uniqueness: :true

  def name
    tag
  end

  rails_admin do
    list do
      field :tag
      field :title
      field :visible
      field :footer
      field :picture
      field :link
      field :description
    end
  end
end
