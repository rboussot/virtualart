class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :profile]

  def home
    @count= 1
    @blocks = Block.all
    @carousels = Block.where("tag like ?", "carousel%").where(visible: true).order(tag: :asc)
    @home_logiciel = Block.find_by tag: "accueil_logiciels"
    @home_video = Block.find_by tag: "accueil_video"
    @home_espace = Block.find_by tag: "accueil_espace"
    @home_materiel = Block.find_by tag: "accueil_materiel"
    @softwares = Software.where.not(logo: nil).order(created_at: :asc)
    @news = Block.find_by tag: "news"
    @post = Block.find_by tag: "post"
    @coeur = Block.find_by tag: "coeur"
    @livredor = Block.find_by tag: "livredor"
    @profil = Block.find_by tag: "profil"
  end

  def profile
    @prof1 = Block.find_by(tag: "prof1")
    @prof2 = Block.find_by(tag: "prof2")
    @prof3 = Block.find_by(tag: "prof3")
    @prof4 = Block.find_by(tag: "prof4")
    @parcours = Block.find_by(tag: "parcours")
    @travail = Block.find_by(tag: "travail")
    @travail = Block.find_by(tag: "travail")
    @inscription = Block.find_by(tag: "inscription_cours")
  end
end
