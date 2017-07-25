class StagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @stages = Stage.where(visible: true)
    @stagetypes = Stagetype.where(visible: true)
  end

end
