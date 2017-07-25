class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @blocks = Block.all
    @carousels = Block.where("tag like ?", "carousel%").shuffle
  end
end
