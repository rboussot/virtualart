class RealisationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @realisations = Realisation.all
    @courses = Course.where(visible: true)
    @propos = Block.find_by(tag: "propos")
  end

  def show
    @realisations = Realisation.all
    @courses = Course.where(visible: true)
    @propos = Block.find_by(tag: "propos")
    @realisation = Realisation.find(params[:id])
      respond_to do |format|
        format.html { render 'show', layout: false}
        format.js { }
      end
  end

end
