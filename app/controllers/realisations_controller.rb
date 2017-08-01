class RealisationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

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
    if @realisation.link.include? "http"
      respond_to do |format|
        format.html { render 'show', layout: false}
        format.js { render 'picture' }
      end
    else
      respond_to do |format|
        format.html { render 'show', layout: false}
        format.js { render 'video' }
      end
    end
  end

end
