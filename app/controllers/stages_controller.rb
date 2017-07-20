class StagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @stages = Stage.all
  end

end
