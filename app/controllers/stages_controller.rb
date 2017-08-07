class StagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @menu_stages = "active"
    @stages = Stage.where(visible: true)
    @stagetypes = Stagetype.where(visible: true)
    @inscription = Block.find_by(tag: "inscription_stage")
    @infos = Block.find_by(tag: "infos")
  end

end
