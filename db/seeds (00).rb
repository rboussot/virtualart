#
# ==================== User ====================
# === On en crée 3, dont un de test pas admin
#
u1 = User.create!(
  email: "boussotestelle@gmail.com",
  password: "mlkmlk",
  firstname: "Estelle",
  lastname: "Boussot",
  admin: true)
p u1
#
u2 = User.create!(
  email: "rboussot@gmail.com",
  password: "mlkmlk",
  firstname: "Romain",
  lastname: "Boussot",
  admin: true)
p u2
#
u3 = User.create!(
  email: "test@gmail.com",
  password: "mlkmlk",
  firstname: "Test",
  lastname: "Test")
p u3
#
# ==================== Software ====================
# === On les crée tous
#
s1 = Software.create!(
  title: "Photoshop",
  description: "Photoshop est un logiciel de retouche photos...")
p s1
#
# ==================== Course ====================
# === On les crée tous
#
c1 = Course.create!(
  title: "Infographie 2d",
  description: "Réalisez dessins, retouches photos...",
  picture: "",
  visible: true)
p c1
#
# ==================== Lecture ====================
# === Au moins 3 pour chaque cours/logiciel
#
l1 = Lecture.create!(
  software: s1, # On réutilise le software défini plus haut.
  course: c1,
  title: "Découvrir l'interface",
  video: "mettre un ID youtube ici",
  description: "décrire la vidéo ici.",
  order: "001",
  visible: true)
p l1
#
# ==================== UsersLecture ====================
# === On en crée 1 seul pour tester
#
ul1 = UsersLecture.create!(
  user: u1,
  lecture: l1,
  note: "Appréciation.")
p ul1
#
# ==================== Realisation ====================
# === Au moins 3 dans chaque cours
#
r1 = Realisation.create!(
  course: c1,
  user: u1,
  title: "facultatif",
  link: "lien vers l'image",
  thumbnail: "lien vers la vignette")
p r1
#
# ==================== Stagetype ====================
# === Les créer tous
#
sty1 = Stagetype.create!(
  title: "Stage de montage photo",
  #description: "",
  picture: "",
  visible: true)
p sty1
#
# ==================== Stage ====================
# === Au moins 1 de chaque type
#
sta1 = Stage.create!(
  stagetype: sty1,
  timeslot: "Samedi 4 et dimanche 5 novembre",
  visible: true )
p sta1
#
# ==================== UsersStage ====================
# === On en crée 1 seul pour tester
#
us1 = UsersStage.create!(
  user: u1,
  stage: sta1,
  confirmed: false)
p us1
#
# ==================== Timeslot ====================
# === Cela pourra changer, en mettre quelques-uns
#
t1 = Timeslot.create!(
  title: "Lundi 14h - 15h30",
  visible: true)
p t1
#
# ==================== UsersCourse ====================
# === On en crée 1 seul pour tester
#
uc1 = UsersCourse.create!(
  user: u1,
  course: c1,
  timeslot: t1,
  confirmed: true)
p uc1
#
# ==================== Block ====================
# === Créer tous les blocs sachant qu'il y a des champs facultatifs
#
b1 = Block.create!(
  tag: "news",
  title: "News",
  description: "Les stages débutent pour les vacances de juillet !...",
  picture: "", # Pas besoin d'image dans les news
  link: "", # Pas besoin de lien non plus
  visible: true,
  footer: false)
p b1
#
b2 = Block.create!(
  tag: "post",
  title: "Dernier post",
  description: "", # Pas besoin de description pour le dernier post l'image parle d'elle-même
  picture: "http...jpg",
  link: "lien vers le post",
  visible: true,
  footer: false)
p b2
#
b3 = Block.create!(
  tag: "livredor",
  title: "Livre d’Or",
  description: "Venez commenter...",
  picture: "http...jpg",
  link: "",
  visible: false, # Invisible pour l'instant : à développer plus tard.
  footer: false)
p b3
#
b4 = Block.create!(
  tag: "coo",
  title: "Coordonnées",
  description: "8 rue Dalayrac...", # Passer à la ligne normalement
  picture: "",
  link: "",
  visible: true,
  footer: false)
p b4
#
b6 = Block.create!(
  tag: "lieu",
  title: "Lieu",
  description: "",
  picture: "http...jpg",
  link: "http...googlemap",
  visible: true,
  footer: false)
p b6
#
b7 = Block.create!(
  tag: "accueil",
  title: "Accueil",
  description: "L’atelier est ouvert ...",
  picture: "",
  link: "",
  visible: true,
  footer: false)
p b7
#
b8 = Block.create!(
  tag: "inscription",
  title: "Inscription",
  description: "Accédez au formulaire",
  picture: "",
  link: "",
  visible: true,
  footer: false)
p b8
#
b9 = Block.create!(
  tag: "planning",
  title: "Planning",
  description: "Cours les mercredi et ...",
  picture: "",
  link: "",
  visible: true,
  footer: false)
p b9
#
b10 = Block.create!(
  tag: "tarifs",
  title: "Tarifs",
  description: "VIDEOS + SEANCES ...",
  picture: "http...jpg",
  link: "",
  visible: true,
  footer: false)
p b10
#
b10bis = Block.create!(
  tag: "tarifs2",
  title: "Tarifs",
  description: "VIDEOS + SEANCES ...",
  picture: "http...jpg",
  link: "",
  visible: true,
  footer: false)
p b10bis
#
b11 = Block.create!(
  tag: "parcours",
  title: "Parcours",
  description: "Création de Virtual Art ...",
  picture: "",
  link: "",
  visible: true,
  footer: false)
p b11
#
b12 = Block.create!(
  tag:"deviantart",
  title:"Mon Deviant Art",
  description:"Consulter mes travaux ...",
  picture:"http....jpg",
  link: "",
  visible: true,
  footer: false)
p b12
#
b13 = Block.create!(
  tag:"webtoon",
  title:"Mes Webtoons",
  description:"",
  picture:"http....jpg",
  link: "",
  visible: false, # Pour l'instant on ne l'affiche pas
  footer: false)
p b13
#
b14 = Block.create!(
  tag: "twitter",
  title: "Mon fil Twitter",
  description: "",
  picture: "http....jpg",
  link: "",
  visible: true,
  footer: true)
p b14
#
b15 = Block.create!(
  tag: "facebook",
  title: "Ma page facebook",
  description: "",
  picture:"http....jpg",
  link: "",
  visible: true,
  footer: true)
p b15
#
b16 = Block.create!(
  tag: "youtube",
  title: "Ma chaîne Youtube",
  description: "",
  picture:"http....jpg",
  link: "",
  visible: true,
  footer: true)
p b16
#
b17 = Block.create!(
  tag: "instagram",
  title: "Mon Instagram",
  description: "",
  picture:"http....jpg",
  link: "",
  visible: true,
  footer: true)
p b17
#
b19 = Block.create!(
  tag:"coeur",
  title:"Coup de coeur", # Il faudra réfléchir à l'organisation de la page d'accueil
  description: "",
  picture: "",
  link: "",
  visible: true,
  footer: false)
p b19
#
# ==================== CoursesSoftware ====================
# === On en crée 1 seul pour tester
#
cs1 = CoursesSoftware.create!(
  course: c1,
  software: s1)
p cs1
