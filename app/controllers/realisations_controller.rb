class RealisationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @realisations = Realisation.all
  end

end
