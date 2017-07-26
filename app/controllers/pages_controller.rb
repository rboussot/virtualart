class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @blocks = Block.all
    @carousels = Block.where("tag like ?", "carousel%").shuffle
    @home_logiciel = Block.find_by tag: "accueil_logiciels"
    @home_video = Block.find_by tag: "accueil_video"
    @home_espace = Block.find_by tag: "accueil_espace"
    @home_materiel = Block.find_by tag: "accueil_materiel"
    @softwares = Software.where.not(logo: nil).order(created_at: :asc)
    @news = Block.find_by tag: "news"
    @post = Block.find_by tag: "post"
    @coeur = Block.find_by tag: "coeur"
    @livredor = Block.find_by tag: "livredor"
  end
end
