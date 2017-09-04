#
# ==================== User ====================
# === On en crée 3, dont un de test pas admin
#
u1 = User.create!(
  email: "boussotestelle@gmail.com",
  password:"mlkmlk",
  firstname:"Estelle",
  lastname:"Boussot",
  admin: true)
p u1
#
u2 = User.create!(
  email: "rboussot@gmail.com",
  password:"mlkmlk",
  firstname:"Romain",
  lastname:"Boussot",
  phone:"06 85 18 65 73",
  adress:"33B rue Lebon, Sartouville",
  admin: true)
p u2
#
u3 = User.create!(
  email: "test@gmail.com",
  password:"mlkmlk",
  firstname:"Test",
  phone:"test",
  adress:"test",
  lastname:"Test")
p u3
#
# ==================== Software ====================
# === On les crée tous
#
ph = Software.create!(
  title: "Photoshop",
  description: "Photoshop est un logiciel de retouche et de montage assisté par ordinateur édité par Adobe. Il est utilisé dans tous les domaines (traitement de photographie et création d'images) pour sa polyvalence !",
  logo: "http://www.wantitbuyit.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/p/h/photoshop.jpg")
p ph
#
ai = Software.create!(
  title: "Illustrator",
  description: "Illustrator est un logiciel de dessin vectoriel édité par Adobe. Il est essentiellement utilisé pour la création de logos, mais l'illustration vectorielle est à la mode !",
  logo: "https://helpx.adobe.com/content/dam/help/mnemonics/ai_cc_app_RGB.svg")
p ai
#
ind = Software.create!(
  title: "InDesign",
  description: "Indesign est un logiciel de mise en page édité par Adobe, les liens avec les fichiers Photoshop et Illustrator sont évidement reconnus.",
  logo: "http://www.ensistemas.com/portals/0/Adobe/Adobe-InDesign-CC-01.png")
p ind
#
ae = Software.create!(
  title: "After Effects",
  description: "After Effects est un logiciel de compositing (montage) édité par Adobe. Il permet de créer des effets spéciaux et des animations graphiques sur des images et vidéos.",
  logo: "http://ducminhabc.com/wp-content/uploads/2016/12/After-Effect-logo-500x500.png")
p ae
#
ma = Software.create!(
  title: "Maya",
  description: "Maya est un logiciel de modéalisation et d'animation 3D utilisé dans l'industrie du cinéma, développé par la société Autodesk.",
  logo: "http://area.autodesk.com/userdata/blogs/the-maya-blog.png")
p ma
#
mu = Software.create!(
  title: "Mudbox",
  description: "Mudbox est un logiciel de sculpting 3D, développé par la société Autodesk. Il permet la création de détails en modélisation et textures.",
  logo: "https://www.tezabo.com/sites/default/files/mudbox.png")
p mu
#
csp = Software.create!(
  title: "Clip Studio Paint",
  description: "Clip Studio Paint est un logiciel de création de BDs Japonais, éditer chez nous par Lost Marble.",
  logo: "https://pbs.twimg.com/profile_images/378800000343701556/aed29f4d1f173fc74b33a7a0da7b2e92_400x400.png")
p csp
#
mo = Software.create!(
  title: "Moho",
  description: "Moho est un logiciel d'animation 2D vectoriel facile d'accès, édité par Lost Marble.",
  logo: "https://pbs.twimg.com/profile_images/762793616817303552/xegBWWOY.jpg")
p mo
#
gra = Software.create!(
  title: "Graphisme",
  description: "Parce que les logiciels ne font pas tout, vous trouverez ici des connaissances plus générales que ce soit en dessin, en couleur, en impression... etc !")
p gra
#
# ==================== Course ====================
# === On les crée tous
#
m2d = Course.create!(
  title: "Multimédia 2D",
  description: "Réalisez dessins, retouches photos, dessin animé, films... Vous apprendrez à utiliser les logiciels et vous pourrez créer vos projets, nous vous aidons sur toutes les étapes : du croquis à la mise en page; du story-board au compositing en passant par le son !

Logiciels : Photoshop, Moho, After Effects.",
  picture: "http://www.virtualart.pro/images/interface/ic-2d.jpg",
  visible: true,
  color: "153, 255, 153",
  puce: "http://www.virtualart.pro/images/interface/puce-2d.png")
p m2d
#
m3d = Course.create!(
  title: "Multimédia 3D",
  description: "Réalisez des objets, des scènes et des animations 3D ! Apprenez à utiliser les logiciels, et nous vous aiderons à réaliser vos images, figurines ou films, du story-board au compositing en passant par le son !

Logiciels : Maya, Mudbox, Photoshop, After Effects.",
  picture: "http://www.virtualart.pro/images/interface/ic-3d.jpg",
  visible: true,
  color: "81, 178, 99",
  puce: "http://www.virtualart.pro/images/interface/puce-3d.png")
p m3d
#
bd = Course.create!(
  title: "BD Numérique",
  description: "Apprenez les règles de la BD, développez vos personnages, histoires et mises en page. Le numérique vous offre aussi de nouvelles solutions d'immersion à découvrir !

Logiciels : Clip Sutdio Paint, Photoshop.",
  picture: "http://www.virtualart.pro/images/interface/ic-bd.jpg",
  visible: true,
  color: "253, 203, 104",
  puce: "http://www.virtualart.pro/images/interface/puce-bd.png")
p bd
#
pr = Course.create!(
  title: "Infographie Print",
  description: "Cette formation vous apportera le savoir faire autour de la retouche photo, du dessin vectoriel et de la mise en page afin de réaliser Flyers, affiches, livrets... Vous n'aurez plus qu'à imprimer !

Logiciels : Photoshop, Illustrator, Indesign.",
  picture: "http://www.virtualart.pro/images/interface/ic-print.jpg",
  visible: true,
  color: "248, 241, 153",
  puce: "http://www.virtualart.pro/images/interface/puce-print.png")
p pr
#
# ==================== Lecture ====================
# === Au moins 3 pour chaque cours/logiciel
#-----------------------------------------------------------------------------------------------------------------------------
# --- MULTIMEDIA 2D --- PHOTOSHOP
#
l0 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Atelier Animation gratuit",
  video: "MF7nU4tXnGU",
  description: "Toutes les étapes pour animer un petit personnage avec After Effects et Photoshop.",
  order: "000",
  visible: true)
p l0
#
l1 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - interface",
  video: "6O2qmXxMfEk",
  description: "Découverte de l'interface pour une bonne organisation.",
  order: "001",
  visible: true)
p l1
#
l2 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - navigation",
  video: "Hp-TCNuBtuc",
  description: "Naviguer facilement dans photoshop.",
  order: "002",
  visible: true)
p l2
#
l3 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - les calques",
  video: "CKhaqZpBij0",
  description: "La gestion des calques, pour une grande souplesse de travail.",
  order: "003",
  visible: true)
p l3
#
l4 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - les sélections",
  video: "PoNJ2z3eKcM",
  description: "Apprenons à sélectionner pour découper, remplir et transformer.",
  order: "004",
  visible: true)
p l4
#
l5 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - création de document",
  video: " IBLvg8327nk",
  description: "Ici vous verrez tout ce qui est indispensable pour un travail précis sur votre image : mesurer, recadrer, changer sa taille, etc.",
  order: "005",
  visible: true)
p l5
#
l6 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - les pinceaux de base",
  video: "fLqeUof2OnE",
  description: "Ce qu'il faut savoir pour bien commencer en peinture numérique.",
  order: "006",
  visible: true)
p l6
#
l7 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - dégradé",
  video: "xA3nwjkqpwc",
  description: "Familiarisez vous avec l'outil et les options de dégradés, bien utilisés ils sont très utile.",
  order: "007",
  visible: true)
p l7
#
l8 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - dessin avec dégradé",
  video: "tuaxCmF48B8",
  description: "Découvrez étapes par étapes la mise en couleur d'un dessin avec les dégradés.",
  order: "008",
  visible: true)
p l8
#
l9 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - mode de fusion",
  video: "YjlxWIIAoSY",
  description: "Option de pinceaux ou calques très utile pour tout effet de transparence et luminosité.",
  order: "009",
  visible: true)
p l9
#
l10 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - dégradé et mode de fusion",
  video: "I4elbvo1xMI",
  description: "Voyez comment les dégradés peuvent être utile pour la création de lumières.",
  order: "010",
  visible: true)
p l10
#
l11 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - les transformations ",
  video: "E44WG2BEuPk",
  description: "Avec ces outils, déformez à souhait vos photos !",
  order: "011",
  visible: true)
p l11
#
l12 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - réglages",
  video: "K9U_SSWKh4E",
  description: "Vous verrez les réglages qui permettent de retoucher contrastes et couleurs d'une image.",
  order: "012",
  visible: true)
p l12
#
l13 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - masque d'écrêtage",
  video: "L8LvftG0u1I",
  description: "Avec les masques d'écrêtage vous pourrez modifier facilement une zones précises de vos images.",
  order: "013",
  visible: true)
p l13
#
l14 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - mise en couleur d'un dessin",
  video: "elsdhETgv2s",
  description: "Cette technique permet une mise en couleur rapide, efficace, et propre. Et en plus, facilement modifiable.",
  order: "014",
  visible: true)
p l14
#
l15 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - les motifs",
  video: "Hp-TCNuBtuc",
  description: "Créer vos motifs répétable, pratique pour un tissu ou un papier peint.",
  order: "015",
  visible: true)
p l15
#
l16 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - raccourcis clavier",
  video: "J9_gi1CaEcY",
  description: "Cette vidéo vous rappel les raccourcis les plus utiles, mais aussi comment les personnaliser.",
  order: "016",
  visible: true)
p l16
#
l17 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - enregistrement",
  video: "AqH9ele51ag",
  description: "Tour d'horizon des extensions de fichiers les plus courant pour des images de qualité.",
  order: "017",
  visible: true)
p l17
#
l18 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - enregistrement pour le web",
  video: "ArkMXoCHtfU",
  description: "Vous verrez comment optimiser le poids et la qualité vos images à mettre en ligne.",
  order: "018",
  visible: true)
p l18
#
l19 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - correction, suppression",
  video: "o_vRXBE3yss",
  description: "Ces outils de corrections vous permettront de supprimer, par exemple, les poteaux électrique de vos photos de vacances.",
  order: "019",
  visible: true)
p l19
#
l20 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - styles de calques",
  video: "gYheuetV2BM",
  description: "Ajouter facilement des effets de relief, de contour, de lumière sur vos formes. Pratique pour créer des boutons par exemple.",
  order: "020",
  visible: true)
p l20
#
l21 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - textes simples",
  video: "80cxP9ocgEY",
  description: "Création et options des calques de textes, personnalisez les avec les styles de calques.",
  order: "021",
  visible: true)
p l21
#
l22 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - options de documents",
  video: " IBLvg8327nk",
  description: "Ici vous verrez tout ce qui est indispensable pour un travail précis sur votre image : mesurer, recadrer, changer sa taille, etc.",
  order: "022",
  visible: true)
p l22
#
l23 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - les masques de fusion",
  video: "roqvM0-MtbU",
  description: "Mieux qu'une gomme, cela vous permet de masquer un bout d'image et de le ré-afficher à volonté.",
  order: "023",
  visible: true)
p l23
#
l24 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - sélections avancées",
  video: "h6B5bUOpmOc",
  description: "Ces outils et options vous faciliteront la sélection sur des fonds complexes ou encore des cheveux.",
  order: "024",
  visible: true)
p l24
#
l25 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - autres outils de peinture",
  video: "6D_s_60AXzE",
  description: "Petits outils très pratique pour des effets précis : rendre plus net ou flou, brûler, mélanger ou étaler les couleurs.",
  order: "025",
  visible: true)
p l25
#
l26 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - les filtres (artistiques)",
  video: "gJ0ePmTLIxg",
  description: "Avec les filtres vous pourrez réaliser beaucoup d'effets : du flou, des aspects de peinture, des déformations...",
  order: "026",
  visible: true)
p l26
#
l27 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - les filtres (photos)",
  video: "v8lcT4ZwI4s",
  description: "Améliorer l'angle de vos photos, découvrez aussi comment retoucher une silhouette.",
  order: "027",
  visible: true)
p l27
#
l28 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - exo, espace avec filtres",
  video: "Al6YrcXUA34",
  description: "Pas besoin de savoir dessiner pour réaliser des planètes et un ciel étoilé !",
  order: "028",
  visible: true)
p l28
#
l29 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - matte painting",
  video: "Hp-TCNuBtuc",
  description: "En construction."
  order: "029",
  visible: true)
p l29
#
l30 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - vectoriel de base",
  video: "qRTVSUOcDWI",
  description: "Découverte du dessin vectoriel. Son avantage c'est qu'il sera toujours net et ne pixelisera jamais.",
  order: "030",
  visible: true)
p l30
#
l31 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - vectoriel, la plume",
  video: "uZUkuujh6ss",
  description: "Le dessin vectoriel à la plume, une fois maitrisé, vous garanti un tracé propre, net et précis.",
  order: "031",
  visible: true)
p l31
#
l32 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - textes et vectoriel",
  video: "Hp-TCNuBtuc",
  description: "Le texte peut être guider par les ligne des formes vectorielles. ",
  order: "032",
  visible: true)
p l32
#
l33 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - détourage complexe",
  video: "zgC8xL3fFHQ",
  description: "Pour les cas complexes de détourage de cheveux.",
  order: "033",
  visible: true)
p l33
#
l34 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - réglages 2",
  video: "Trxf2AX4a44",
  description: "Des réglages permettant d'améliorer l'aspect artistique de vos photos.",
  order: "034",
  visible: true)
p l34
#
l35 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - script d'actions",
  video: "Hp-TCNuBtuc",
  description: "Avec les scripts, vous pourrez appliquer une même action sur un très grand nombre d'images. Vous gagnerez du temps !",
  order: "035",
  visible: true)
p l35
#
l36 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - Animation avec la fenêtre montage",
  video: "Hp-TCNuBtuc",
  description: "Photoshop permet aussi de faire de l'animation images par images grâce à la fenêtre montage.",
  order: "036",
  visible: true)
p l36
#
l37 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - exo, éclatement",
  video: "RcRtBOyu-b4",
  description: "Une personne ou un élément qui se décompose en particules, c'est un effet toujours recherché.",
  order: "037",
  visible: true)
p l37
#
l38 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - exo, textes sur portrait",
  video: "1Pp4JYW_F_o",
  description: "Quelques techniques pour faire de sympathique effet de photos dans du texte.",
  order: "038",
  visible: true)
p l38
#
l39 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - panoramique",
  video: "8CexIO4RVW0",
  description: "Les appareils photos récents proposent la fonction panoramique, mais il est toujours intéressant de savoir le faire soit même !",
  order: "039",
  visible: true)
p l39
#
l40 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - photo HDR",
  video: "941kLvsu3Rw",
  description: "Une photo HDR à une plage de lumières et couleurs plus large qu'une photo classique. Ici vous verrez comment créer et retoucher à la main votre photo HDR. ",
  order: "040",
  visible: true)
p l40
#
l41 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Photoshop - DP rocher",
  video: "gk8lJFFTAas",
  description: "Peinture numérique de rocher grâce à des pinceaux spécifique.",
  order: "041",
  visible: true)
p l41
#
# --- MULTIMEDIA 2D --- MOHO
l1 = Lecture.create!(
  software: mo, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Moho - interface",
  video: "Hp-TCNuBtuc",
  description: "Découvrez les fonctionnalités de Moho",
  order: "001",
  visible: true)
p l1
#
l2 = Lecture.create!(
  software: mo, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Moho - création et animation de base",
  video: "Hp-TCNuBtuc",
  description: "En construction.",
  order: "002",
  visible: true)
p l2
#
l3 = Lecture.create!(
  software: mo, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Moho - style graphique",
  video: "Hp-TCNuBtuc",
  description: "En construction.",
  order: "003",
  visible: true)
p l3
#
l4 = Lecture.create!(
  software: mo, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Moho - caméra travelling",
  video: "Hp-TCNuBtuc",
  description: "En construction.",
  order: "004",
  visible: true)
p l4
#
l5 = Lecture.create!(
  software: mo, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Moho - bones",
  video: "Hp-TCNuBtuc",
  description: "En construction.",
  order: "005",
  visible: true)
p l5
#
l6 = Lecture.create!(
  software: mo, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Moho - bones sur image",
  video: "Hp-TCNuBtuc",
  description: "En construction.",
  order: "006",
  visible: true)
p l6
#
l7 = Lecture.create!(
  software: mo, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Moho - bones dynamiques",
  video: "Hp-TCNuBtuc",
  description: "En construction.",
  order: "007",
  visible: true)
p l7
#
l8 = Lecture.create!(
  software: mo, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Moho - lipsync",
  video: "Hp-TCNuBtuc",
  description: "En construction.",
  order: "008",
  visible: true)
p l8
#
l9 = Lecture.create!(
  software: mo, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Moho - objets face à la caméra",
  video: "Hp-TCNuBtuc",
  description: "En construction.",
  order: "009",
  visible: true)
p l9
#
l10 = Lecture.create!(
  software: mo, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Moho - chemin d'animation",
  video: "Hp-TCNuBtuc",
  description: "En construction.",
  order: "010",
  visible: true)
p l10
#
l11 = Lecture.create!(
  software: mo, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Moho - le motion graph",
  video: "Hp-TCNuBtuc",
  description: "En construction.",
  order: "011",
  visible: true)
p l11
#
l12 = Lecture.create!(
  software: mo, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Moho - principe d'animation sur une balle",
  video: "Hp-TCNuBtuc",
  description: "En construction.",
  order: "012",
  visible: true)
p l12
#
l13 = Lecture.create!(
  software: mo, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Moho - les masques",
  video: "Hp-TCNuBtuc",
  description: "En construction.",
  order: "013",
  visible: true)
p l13
#
l14 = Lecture.create!(
  software: mo, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Moho - les textes",
  video: "Hp-TCNuBtuc",
  description: "En construction.",
  order: "014",
  visible: true)
p l14
#
l15 = Lecture.create!(
  software: mo, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Moho - les particules",
  video: "Hp-TCNuBtuc",
  description: "En construction.",
  order: "015",
  visible: true)
p l15
#
# --- MULTIMEDIA 2D --- GRAPHISME
#
l1 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Dessin - la tête",
  video: "Hp-TCNuBtuc",
  description: "En construction.",
  order: "001",
  visible: true)
p l1
#
l2 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Dessin - les expressions du visage ",
  video: "Hp-TCNuBtuc",
  description: "En construction.",
  order: "002",
  visible: true)
p l2
#
l3 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: m2d,
  title: "dessin - les proportions du corps",
  video: "Hp-TCNuBtuc",
  description: "En construction.",
  order: "003",
  visible: true)
p l3
#
l4 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Dessin - la main",
  video: "Hp-TCNuBtuc",
  description: "En construction.",
  order: "004",
  visible: true)
p l4
#
l5 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Dessin - le pied",
  video: "Hp-TCNuBtuc",
  description: "En construction.",
  order: "005",
  visible: true)
p l5
#
l6 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Dessin - le squelette",
  video: "Hp-TCNuBtuc",
  description: "En construction.",
  order: "006",
  visible: true)
p l6
#
l7 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Dessin - le corps en volume",
  video: "Hp-TCNuBtuc",
  description: "En construction.",
  order: "007",
  visible: true)
p l7
#
l8 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: m2d,
  title: "Dessin - les attitudes",
  video: "Hp-TCNuBtuc",
  description: "En construction.",
  order: "008",
  visible: true)
p l8
#
# --- MULTIMEDIA 2D --- AFTER EFFECTS
#
l1 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m2d,
  title: "After effects - prise en main",
  video: "gMJTPhO_F-0",
  description: "Découvrez les bases d'After Effects.",
  order: "001",
  visible: true)
p l1
#
l2 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m2d,
  title: "After Effects - pinceaux et formes",
  video: "gO7kBCQX7nI",
  description: "Le dessin dans After Effects.",
  order: "002",
  visible: true)
p l2
#
l3 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m2d,
  title: "After Effects - principes d'animation",
  video: "veDstKBvStg ",
  description: "Animation d'une balle pour bien commencer.",
  order: "003",
  visible: true)
p l3
#
l4 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m2d,
  title: "After Effects - les effets",
  video: "Qbvs4Xd5WfU",
  description: "La liste d'effets, dont les réglages classiques.",
  order: "004",
  visible: true)
p l4
#
l5 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m2d,
  title: "After Effects - textes",
  video: "Klm0dp8MxX0",
  description: "Ajoutez du textes et animer le !",
  order: "005",
  visible: true)
p l5
#
l6 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m2d,
  title: "After Effects - transparence et masques",
  video: "ya6m0iTdCGs",
  description: "Les masques permettent de choisir une zone à afficher.",
  order: "006",
  visible: true)
p l6
#
l7 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m2d,
  title: "After Effects - préparation pour animation",
  video: "RVaKeHye_DQ",
  description: "Découvrez les étapes pour animer avec l'outil marionnette : dessin du personnage en morceaux, import, jointure des articulations...",
  order: "007",
  visible: true)
p l7
#
l8 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m2d,
  title: "After Effects - animation marche",
  video: "avAFaWlQ8UM",
  description: "Animer une marche est un des meilleurs exercices : rythme, poids du corps, boucle d'animation... Tout le corps bouge !",
  order: "008",
  visible: true)
p l8
#
l9 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m2d,
  title: "After Effects - animation sur path",
  video: "qqh_Mwq6NmU",
  description: "L'objet animé regardera dans la direction où il va.",
  order: "009",
  visible: true)
p l9
#
l10 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m2d,
  title: "After Effects - profondeur de plans",
  video: "uUi8v8RiEnY",
  description: "Séparer les éléments par plans donne de la profondeur, c'est l'effet Parallaxe : les éléments les plus loin semblent bouger plus lentement.",
  order: "010",
  visible: true)
p l10
#
l11 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m2d,
  title: "After Effects - la 3D ",
  video: "OSC3FfEt6No",
  description: "Ajoutez du volume 3D à vos formes et textes.",
  order: "011",
  visible: true)
p l11
#
l12 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m2d,
  title: "After Effects - lipsync",
  video: "wjn3JSV4_44",
  description: "Animer les lèvres d'un personnage sur un son, indispensable pour les dialogues de dessins animés.",
  order: "012",
  visible: true)
p l12
#
l13 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m2d,
  title: "After Effects - export",
  video: "4kt4iQvOcHg",
  description: "Comment sortir son film et quels sont les formats du moment.",
  order: "013",
  visible: true)
p l13
#
l14 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m2d,
  title: "After Effects - exemple de travail 1",
  video: "xv3-dAprdmQ",
  description: "Exemple de travail avec photos et film : Un souffle étrange vient éteindre une flamme de bougie.",
  order: "014",
  visible: true)
p l14
#
l15 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m2d,
  title: "After Effects - les expressions, part1",
  video: "ipvGJEZtLQo",
  description: "Découvrez les expressions. Vous pourrez automatiser des animations grâce à des petites lignes de codes.",
  order: "015",
  visible: true)
p l15
#
l16 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m2d,
  title: "After Effects - les expressions, part2",
  video: "0FxY8_OktLc",
  description: "Petit tour d'horizon des expressions les plus classique.",
  order: "016",
  visible: true)
p l16
#
l17 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m2d,
  title: "After Effects - tracking",
  video: "2AfwT1b-uQ4",
  description: "Pour incruster une image dans un film, celle-ci doit suivre le même mouvement de caméra. Vous ferez alors du tracking.",
  order: "017",
  visible: true)
p l17
#
l18 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m2d,
  title: "After Effects - keying",
  video: "cbvc43MjKh0",
  description: "Avec le Keying, supprimer les fonds verts !",
  order: "018",
  visible: true)
p l18
#
l19 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m2d,
  title: "After Effects - diaporama et montage",
  video: "PzkG_WNg_Yc",
  description: "Importez vos fichiers les uns à la suite des autres pour créer une suite de plans.",
  order: "019",
  visible: true)
p l19
#
l20 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m2d,
  title: "After Effects - règle d'animation 1",
  video: "XqF8KRRWofY",
  description: "Une première règle pour dynamiser une animation.",
  order: "020",
  visible: true)
p l20
#

#-----------------------------------------------------------------------------------------------------------------------------
# --- MULTIMEDIA 3D --- MAYA
#
l0 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Atelier 3D gratuit",
  video: "dpjtMeAEfo8",
  description: "",
  order: "000",
  visible: true)
p l0
#
l1 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - interface",
  video: "iP8tSY0neXU",
  description: "L'organisation et les possibilités qu'offre Maya.",
  order: "001",
  visible: true)
p l1
#
l2 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - créations de base",
  video: "qSZXDT7Al_A",
  description: "Bien créer et manipuler ses objets.",
  order: "002",
  visible: true)
p l2
#
l3 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - les sélections",
  video: "NAtOqeAjigg",
  description: "Les solutions de sélections pour faciliter la modélisations.",
  order: "003",
  visible: true)
p l3
#
l4 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - outils principaux de modélisation",
  video: "DYqW0jX3MIg",
  description: "Avec ces quelques outils, vous pourrez tout modéliser.",
  order: "004",
  visible: true)
p l4
#
l5 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - exo de modélisation, canapé",
  video: "XFT9MXhjiis",
  description: "Modélisez un canapé, découvrez la technique pour avoir des objets arrondis aux courbes douces.",
  order: "005",
  visible: true)
p l5
#
l6 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - fusionner",
  video: "aWnkA16Pye4",
  description: "Vous pourrez assembler 2 objets en 1 seul.",
  order: "006",
  visible: true)
p l6
#
l7 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - exo de modélisation, bibliothèque",
  video: "wQy2wDwkztI",
  description: "Exercice de modélisation d'une bibliothèque, pour découvrir quelques astuces d'outils.",
  order: "007",
  visible: true)
p l7
#
l8 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - astuces de modélisation",
  video: "OTJ4Oz9L90E",
  description: "Les problèmes et les besoins les plus courants sur un objet sont expliqués ici.",
  order: "008",
  visible: true)
p l8
#
l9 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - materiaux simples",
  video: "TUTz3XczgIY",
  description: "Donnez une matière et une texture à vos objets.",
  order: "009",
  visible: true)
p l9
#
l10 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - les duplications",
  video: "ykoxW3U1Ibw",
  description: "Toutes les solutions de duplications d'objets.",
  order: "010",
  visible: true)
p l10
#
l11 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - organisation",
  video: "juqkapJKydA",
  description: "Un projet bien rangé dans des dossiers, avec des éléments bien nommés, c'est s'assurer un travail propre.",
  order: "011",
  visible: true)
p l11
#
l12 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - modeling toolkit",
  video: "MDKMydzZpvo",
  description: "C'est votre boîte à outils pour modéliser ! Vous aurez tous ce qu'il faut sous la main pour modéliser.",
  order: "012",
  visible: true)
p l12
#
l13 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - exo de modélisation, peluche lapin",
  video: "Vh-FdgZ1pZE",
  description: "Modélisez votre premier personnage avec ce lapin !",
  order: "013",
  visible: true)
p l13
#
l14 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - les UVs",
  video: "VMoQPaLFYQM",
  description: "Comment créez une texture 2D pour un objet 3D ? Il faut faire son patron ! Voilà ce que sont les UVs.",
  order: "014",
  visible: true)
p l14
#
l15 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - textures avec photoshop",
  video: "mqyjmjU4ADU",
  description: "Découvrez comment se fait le passage entre votre objet 3D et la texture que vous créez sur Photoshop. Il est important de nuancer cette texture !",
  order: "015",
  visible: true)
p l15
#
l16 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - matériaux et textures",
  video: "6RHuFLenGfw",
  description: "Avec des images, vous pourrez créer des textures avec des effets de transparence, de relief, ou encore de lumières.",
  order: "016",
  visible: true)
p l16
#
l17 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - les caméras",
  video: "ilcwueu9BzY",
  description: "Créez et animer des caméras.",
  order: "017",
  visible: true)
p l17
#
l18 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - caméra sur courbe",
  video: "wmxdFAc19fE",
  description: "Animer une caméra aux mouvements complexes.",
  order: "018",
  visible: true)
p l18
#
l19 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - rendu, les bases",
  video: "VqKkqeFuHuY",
  description: "Sortez vos scènes en images et films !",
  order: "019",
  visible: true)
p l19
#
l20 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - les lumières",
  video: "hP2rqxFBjkI",
  description: "Mettez de la lumière dans vos scènes.",
  order: "020",
  visible: true)
p l20
#
l21 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - animation basique",
  video: "lsISpffnBXs",
  description: "Découvrez comment créer une animation simple sur un objet ou un groupe d'objets.",
  order: "021",
  visible: true)
p l21
#
l22 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - les courbes",
  video: "-4ya6FsG5iU",
  description: "Dessinez des courbes 2D pour vous aidez à modéliser ou animer.",
  order: "022",
  visible: true)
p l22
#
l23 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - gestion d'objets",
  video: "Fsak_dtoOF8",
  description: "Révisions de raccourcis et outils pratique pour bien gérer ces objets 3D.",
  order: "023",
  visible: true)
p l23
#
l24 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - graph editor",
  video: "h4mXppBi-2g",
  description: "La fenêtre Graph Editor vous permettra d'animer précisément vos objets avec leurs courbes d'animations.",
  order: "024",
  visible: true)
p l24
#
l25 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - UV bonus tool",
  video: "jhdxiDFThBE",
  description: "Facilitez vous la création d'UVs avec ce plugin.",
  order: "025",
  visible: true)
p l25
#
l26 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - model sheet",
  video: "D-H2lPIJXLA",
  description: "Le model sheet d'un personnage, c'est son dessin de face et de profil qui permettra de le décalquer en 3D.",
  order: "026",
  visible: true)
p l26
#
l27 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - exo de modélisation, caméléon",
  video: "lSKpHuC1Haw",
  description: "Apprenez à modéliser un caméléon, avec les outils récurrents.",
  order: "027",
  visible: true)
p l27
#
l28 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - topologie",
  video: "ajemVtFh3qc",
  description: "Une bonne topologie, c'est lorsque les edges suivent le volume de l'objet. Cela facilite par la suite les UVs et l'animation.",
  order: "028",
  visible: true)
p l28
#
l29 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - les nonlinear",
  video: "iKt5r0s3lto",
  description: "Les Nonlinear sont des outils de déformations simples et toujours sympa pour faire des zigzag, des courbes etc. Le tout animable !",
  order: "029",
  visible: true)
p l29
#
l30 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - squelette",
  video: "IHRVVo4XBEE",
  description: "Suivez les étapes de création d'un squelette. Vous en aurez besoin pour l'animer.",
  order: "030",
  visible: true)
p l30
#
l31 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - skinning",
  video: "A1y4BvdJMZo",
  description: "Le skinning, c'est simplement le fait de relier votre modélisation de personnage à son squelette !",
  order: "031",
  visible: true)
p l31
#
l32 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - bind skin, options",
  video: "gSZLPjToWk0",
  description: "Toutes les options de la fenêtre de skinning, pour faciliter les plis aux articulations.",
  order: "032",
  visible: true)
p l32
#
l33 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - human IK",
  video: "QeXyEZUrj8Q",
  description: "Créez facilement un squelette à l'aide d'human IK.",
  order: "033",
  visible: true)
p l33
#
l34 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - blendshape",
  video: "8zisCKNLVCM",
  description: "Animez à l'aide de morphing, pratique pour les expressions de visages.",
  order: "034",
  visible: true)
p l34
#
l35 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - mental ray, les bases",
  video: "R4I9gbHHzv4",
  description: "Mental-Ray est un moteur de rendu parmi d'autres. Il permet d'avoir des images réalistes.",
  order: "035",
  visible: true)
p l35
#
l36 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - matériaux mental ray",
  video: "n2ODXPfahTE",
  description: "Les matériaux Mental-Ray iront avec le moteur de rendu Mental Ray. Des matériaux tout fait de verre, métaux, etc seront à votre disposition.",
  order: "036",
  visible: true)
p l36
#
l37 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - color management",
  video: "zw6uijDIYWA",
  description: "Parfois, les couleurs ne sont pas les mêmes dans le logiciel que dans une sortie en image. Vous aurez ici la solution au problème.",
  order: "037",
  visible: true)
p l37
#
l38 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - hypershade",
  video: "9ALQ3uTpEM0",
  description: "Connecter les blocs de textures et matériaux ensemble, ce fonctionnement nodale est mis en évidence dans cette fenêtre.",
  order: "038",
  visible: true)
p l38
#
l39 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - shader, connections avancées",
  video: "2BYcHYS5v5A",
  description: "Reliez vos textures et matériaux entre eux, sur plusieurs niveaux, pour obtenir un Shader complexe.",
  order: "039",
  visible: true)
p l39
#
l40 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - paint effects",
  video: "P7Jv3qf72OY",
  description: "Les paint effects seront, entre autres, pratique pour créer des arbres et plantes facilement.",
  order: "040",
  visible: true)
p l40
#
l41 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - rendu externe, part1",
  video: "D3ycdGrFuHs",
  description: "Découvrez l'option Sun&sky du moteur de rendu Mental-Ray. Vous pourrez, avec ses options, faire des rendus de ciel performant.",
  order: "041",
  visible: true)
p l41
#
l42 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - rendu externe, part2",
  video: "qpSCWVc9g-Y",
  description: "Le ciel est une source lumineuse. Nous voyons ici comment une demi-sphère autour de notre scène peut l'éclairer.",
  order: "042",
  visible: true)
p l42
#
l43 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - rendu externe, part3",
  video: "hLxHei053Ug",
  description: "Le rendu des lumières est long. Voyons ici comment obtenir un éclairage sympa et rapide.",
  order: "043",
  visible: true)
p l43
#
l44 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - rendu interne, part1",
  video: "tAGzXx8LJ9U",
  description: "Gérez la diffusion de la lumière d'un objet grâce à l'option Final Gather du moteur de rendu Mental-Ray.",
  order: "044",
  visible: true)
p l44
#
l45 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - rendu interne, part2",
  video: "isxiRPWeYwE",
  description: "Nous analyserons comment la lumière se répercute sur les objets. Utile pour créer vous-même des ambiances réalistes.",
  order: "045",
  visible: true)
p l45
#
l46 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - rendu interne, part3",
  video: "XQ-0kAvxEpg",
  description: "Découvrez comment créer une source de lumière visible, comme une lampe.",
  order: "046",
  visible: true)
p l46
#
l47 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - jiggle deform",
  video: "5Vv1mNENQ-Y",
  description: "Rendez mou une partie de votre objet! Parfait si vous avez un personnage bedonnant.",
  order: "047",
  visible: true)
p l47
#
l48 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - les lattices",
  video: "0MlAcisT3kI",
  description: "Déformez vos objets à l'aide d'une grille 3D.",
  order: "048",
  visible: true)
p l48
#
l49 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - constrain",
  video: "uFI9XMlgr70",
  description: "Avec les Constrain, vous pourrez contraindre un objet à en suivre un autres selon différents paramètres.",
  order: "049",
  visible: true)
p l49
#
l50 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - driven key",
  video: "tA8JdfSZNC0",
  description: "Comme les Constrain, un objet pourra en contrôler un autre, ici avec plus de subtilité encore.",
  order: "050",
  visible: true)
p l50
#
l51 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - tissu part1",
  video: "zVOK5NxX3f0",
  description: "Créer des tissus implique des collisions, des plis... Il y a de nombreux paramètres pour gérez ces dynamiques.",
  order: "051",
  visible: true)
p l51
#
l52 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - tissu part2",
  video: "Hp-TCNuBtuc",
  description: "Attachez un tissu à un objet solide, exemple d'un drapeau.",
  order: "052",
  visible: true)
p l52
#
l53 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - tissu part3",
  video: "Hp-TCNuBtuc",
  description: "Gérez les performances de calculs du tissu.",
  order: "053",
  visible: true)
p l53
#
l54 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - tissu part4",
  video: "S-TYmbbY3Tg",
  description: "Création de vêtement : les étapes pour une jupe et un t-shirt.",
  order: "054",
  visible: true)
p l54
#
l55 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - sculpting",
  video: "hFbt4qTVXHY",
  description: "Sculpter dans vos objets 3D, comme en poterie.",
  order: "055",
  visible: true)
p l55
#
l56 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - trax editor",
  video: "8kZe4FR3nMg",
  description: "Une animation revient régulièrement dans votre scène? Faites un clip de l'animation et réutilisez la à volonté. ",
  order: "056",
  visible: true)
p l56
#
l57 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - les render passes",
  video: "3A_5B4fo_J4",
  description: "Les images sont souvent rendus en plusieurs fois : une passe de couleur, une passe pour les ombres, etc. Cela permet plus de souplesse au montage.",
  order: "057",
  visible: true)
p l57
#
l58 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - xgen, archives (champ de fleurs)",
  video: "RahU9OUBuLc",
  description: "Créez un champs de fleur, une forêt... Avec Xgen vous pourrez avoir un grand nombre d'objets semblable répartie sur une surface.",
  order: "058",
  visible: true)
p l58
#
l59 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - xgen, groomable splines (poils)",
  video: "zKEzZXkxdgc",
  description: "Créez une fourrure avec Xgen.",
  order: "059",
  visible: true)
p l59
#
l60 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - fluids, bases",
  video: "-PDN6K9v3kA",
  description: "Créer des liquide avec le menu Fluids. Ici, nous abordons l'eau qui coule d'un robinet et l'eau dans la cuve.",
  order: "060",
  visible: true)
p l60
#
l61 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - particules, feu",
  video: "ASwg9Tzftqc",
  description: "Créez et personnaliser votre feu !",
  order: "061",
  visible: true)
p l61
#
l62 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - particules, sol meuble",
  video: "oePe_3Y0SQ8",
  description: "Créez des traces dans le  sable, la neige, la boue.. au choix !",
  order: "062",
  visible: true)
p l62
#
l63 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - particules, feuilles",
  video: "Oqb5JbkvKqc",
  description: "A l'aide des particules, créez des feuilles qui tombent.",
  order: "063",
  visible: true)
p l63
#
l64 = Lecture.create!(
  software: ma, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Maya - les expressions",
  video: "WUCfGR-3ZYA",
  description: "Les expressions sont des petits bouts de codes qui vous permettrons d'automatiser certaines animations.",
  order: "064",
  visible: true)
p l64
#
# --- MULTIMEDIA 3D --- PHOTOSHOP
l1 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Photoshop - interface",
  video: "6O2qmXxMfEk",
  description: "Découverte de l'interface pour une bonne organisation.",
  order: "001",
  visible: true)
p l1
#
l2 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Photoshop - navigation",
  video: "Hp-TCNuBtuc",
  description: "Naviguer facilement dans photoshop.",
  order: "002",
  visible: true)
p l2
#
l3 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Photoshop - les calques",
  video: "CKhaqZpBij0",
  description: "La gestion des calques, pour une grande souplesse de travail.",
  order: "003",
  visible: true)
p l3
#
l4 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Photoshop - les sélections",
  video: "PoNJ2z3eKcM",
  description: "Apprenons à sélectionner pour découper, remplir et transformer.",
  order: "004",
  visible: true)
p l4
#
l5 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Photoshop - création de document",
  video: " IBLvg8327nk",
  description: "Ici vous verrez tout ce qui est indispensable pour un travail précis sur votre image : mesurer, recadrer, changer sa taille, etc.",
  order: "005",
  visible: true)
p l5
#
l6 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Photoshop - les pinceaux de base",
  video: "fLqeUof2OnE",
  description: "Ce qu'il faut savoir pour bien commencer en peinture numérique.",
  order: "006",
  visible: true)
p l6
#
l7 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Photoshop - dégradé",
  video: "xA3nwjkqpwc",
  description: "Familiarisez vous avec l'outil et les options de dégradés, bien utilisés ils sont très utile.",
  order: "007",
  visible: true)
p l7
#
l8 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Photoshop - mode de fusion",
  video: "YjlxWIIAoSY",
  description: "Option de pinceaux ou calques très utile pour tout effet de transparence et luminosité.",
  order: "008",
  visible: true)
p l8
#
l9 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Photoshop - les transformations ",
  video: "E44WG2BEuPk",
  description: "Avec ces outils, déformez à souhait vos photos !",
  order: "009",
  visible: true)
p l9
#
l10 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Photoshop - réglages",
  video: "K9U_SSWKh4E",
  description: "Vous verrez les réglages qui permettent de retoucher contrastes et couleurs d'une image.",
  order: "010",
  visible: true)
p l10
#
l11 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Photoshop - masque d'écrêtage",
  video: "L8LvftG0u1I",
  description: "Avec les masques d'écrêtage vous pourrez modifier facilement une zones précises de vos images.",
  order: "011",
  visible: true)
p l11
#
l12 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Photoshop - raccourcis clavier",
  video: "J9_gi1CaEcY",
  description: "Cette vidéo vous rappel les raccourcis les plus utiles, mais aussi comment les personnaliser.",
  order: "012",
  visible: true)
p l12
#
l13 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Photoshop - enregistrement",
  video: "AqH9ele51ag",
  description: "Tour d'horizon des extensions de fichiers les plus courant pour des images de qualité.",
  order: "013",
  visible: true)
p l13
#
l14 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Photoshop - correction, suppression",
  video: "o_vRXBE3yss",
  description: "Ces outils de corrections vous permettront de supprimer, par exemple, les poteaux électrique de vos photos de vacances.",
  order: "014",
  visible: true)
p l14
#
l15 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Photoshop - styles de calques",
  video: "gYheuetV2BM",
  description: "Ajouter facilement des effets de relief, de contour, de lumière sur vos formes. Pratique pour créer des boutons par exemple.",
  order: "015",
  visible: true)
p l15
#
l16 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Photoshop - textes simples",
  video: "80cxP9ocgEY",
  description: "Création et options des calques de textes, personnalisez les avec les styles de calques.",
  order: "016",
  visible: true)
p l16
#
l17 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Photoshop - les masques de fusion",
  video: "roqvM0-MtbU",
  description: "Mieux qu'une gomme, cela vous permet de masquer un bout d'image et de le ré-afficher à volonté.",
  order: "017",
  visible: true)
p l17
#
l18 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Photoshop - les filtres (artistiques)",
  video: "gJ0ePmTLIxg",
  description: "Avec les filtres vous pourrez réaliser beaucoup d'effets : du flou, des aspects de peinture, des déformations...",
  order: "018",
  visible: true)
p l18
#
l19 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Photoshop - vectoriel de base",
  video: "qRTVSUOcDWI",
  description: "Découverte du dessin vectoriel. Son avantage c'est qu'il sera toujours net et ne pixelisera jamais.",
  order: "019",
  visible: true)
p l19
#
# --- MULTIMEDIA 3D --- MUDBOX
l1 = Lecture.create!(
  software: mu, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Mudbox - interface",
  video: "IRT2Q8tBGOw",
  description: "Découvrez Mudbox.",
  order: "001",
  visible: true)
p l1
#
l2 = Lecture.create!(
  software: mu, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Mudbox - gestions des couches",
  video: "9iszhenGJ68",
  description: "Faites des détails grâce aux couches.",
  order: "002",
  visible: true)
p l2
#
l3 = Lecture.create!(
  software: mu, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Mudbox - sculpting",
  video: "IPMc2GK25GA",
  description: "C'est parti pour sculpter les détails !",
  order: "003",
  visible: true)
p l3
#
l4 = Lecture.create!(
  software: mu, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Mudbox - tampon et pochoir",
  video: "gW5ZyjJuqBM",
  description: "Utilisez une texture pour donner du relief.",
  order: "004",
  visible: true)
p l4
#
l5 = Lecture.create!(
  software: mu, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Mudbox - options de pinceaux",
  video: "X1TKMeXXc88",
  description: "Tour d'horizons des pinceaux et de leurs options pour sculpter en finesse.",
  order: "005",
  visible: true)
p l5
#
l6 = Lecture.create!(
  software: mu, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Mudbox - peinture",
  video: "DYFadI65-ds",
  description: "Faites vos couleurs et textures directement sur le modèle 3D !",
  order: "006",
  visible: true)
p l6
#
l7 = Lecture.create!(
  software: mu, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Mudbox - normal map",
  video: "VktSN8E9nWc",
  description: "Les détails alourdissent beaucoup l'objet ! sortez une Normal Map, texture simulant le relief.",
  order: "007",
  visible: true)
p l7
#
# --- MULTIMEDIA 3D --- AFTER EFFECTS
l1 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m3d,
  title: "After effects - prise en main",
  video: "gMJTPhO_F-0",
  description: "Découvrez les bases d'After Effects.",
  order: "001",
  visible: true)
p l1
#
l2 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m3d,
  title: "After Effects - les effets",
  video: "Qbvs4Xd5WfU",
  description: "La liste d'effets, dont les réglages classiques.",
  order: "002",
  visible: true)
p l2
#
l3 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m3d,
  title: "After Effects - textes",
  video: "Klm0dp8MxX0",
  description: "Ajoutez du textes et animer le !",
  order: "003",
  visible: true)
p l3
#
l4 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m3d,
  title: "After Effects - transparence et masques",
  video: "ya6m0iTdCGs",
  description: "Les masques permettent de choisir une zone à afficher.",
  order: "004",
  visible: true)
p l4
#
l5 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m3d,
  title: "After Effects - profondeur de plans",
  video: "uUi8v8RiEnY",
  description: "Séparer les éléments par plans donne de la profondeur, c'est l'effet Parallaxe : les éléments les plus loin semblent bouger plus lentement.",
  order: "005",
  visible: true)
p l5
#
l6 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m3d,
  title: "After Effects - export",
  video: "4kt4iQvOcHg",
  description: "Comment sortir son film et quels sont les formats du moment.",
  order: "006",
  visible: true)
p l6
#
l7 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m3d,
  title: "After Effects - exemple de travail 1",
  video: "xv3-dAprdmQ",
  description: "Exemple de travail avec photos et film : Un souffle étrange vient éteindre une flamme de bougie.",
  order: "007",
  visible: true)
p l7
#
l8 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m3d,
  title: "After Effects - tracking",
  video: "2AfwT1b-uQ4",
  description: "Pour incruster une image dans un film, celle-ci doit suivre le même mouvement de caméra. Vous ferez alors du tracking.",
  order: "008",
  visible: true)
p l8
#
l9 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m3d,
  title: "After Effects - keying",
  video: "cbvc43MjKh0",
  description: "Avec le Keying, supprimer les fonds verts !",
  order: "009",
  visible: true)
p l9
#
l10 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m3d,
  title: "After Effects - diaporama et montage",
  video: "PzkG_WNg_Yc",
  description: "Importez vos fichiers les uns à la suite des autres pour créer une suite de plans.",
  order: "010",
  visible: true)
p l10
#
l11 = Lecture.create!(
  software: ae, # On réutilise le software défini plus haut.
  course: m3d,
  title: "After Effects - compositing des passes 3D",
  video: "",
  description: "Améliorez vos rendus en assemblant vos passes sur After Effects.",
  order: "011",
  visible: true)
p l11
#
# --- MULTIMEDIA 3D --- GRAPHISME
l1 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Projet - workflow, animation",
  video: "Hp-TCNuBtuc",
  description: "En construction.",
  order: "001",
  visible: true)
p l1
#
l2 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Projet -préparer son projet d'animation 3D",
  video: "Hp-TCNuBtuc",
  description: "En construction.",
  order: "002",
  visible: true)
p l2
#
l3 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Dessin - la tête",
  video: "Hp-TCNuBtuc",
  description: "En construction.",
  order: "003",
  visible: true)
p l3
#
l4 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: m3d,
  title: "dessin - les proportions du corps",
  video: "Hp-TCNuBtuc",
  description: "En construction.",
  order: "004",
  visible: true)
p l4
#
l5 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Dessin - le corps en volume",
  video: "Hp-TCNuBtuc",
  description: "En construction.",
  order: "005",
  visible: true)
p l5
#
l6 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: m3d,
  title: "Animation - le storyboard",
  video: "Hp-TCNuBtuc",
  description: "En construction.",
  order: "006",
  visible: true)
p l6
#
#-----------------------------------------------------------------------------------------------------------------------------
# --- BD NUMERIQUE --- CLIP STUDIO PAINT
#
l0 = Lecture.create!(
  software: csp, # On réutilise le software défini plus haut.
  course: bd,
  title: "Atelier BD gratuit",
  video: "Démonstration sur Photoshop des étapes de mise en couleur rapide et efficace d'un personnage, utile pour vos personnages qui reviennent à toutes les cases.",
  description: "elsdhETgv2s",
  order: "000",
  visible: true)
p l0
#
l1 = Lecture.create!(
  software: csp, # On réutilise le software défini plus haut.
  course: bd,
  title: "Clip Studio Paint - interface",
  video: "Hp-TCNuBtuc",
  description: "En construction, disponible à la rentrée.",
  order: "001",
  visible: true)
p l1
#
l2 = Lecture.create!(
  software: csp, # On réutilise le software défini plus haut.
  course: bd,
  title: "Clip Studio Paint - encrage",
  video: "Hp-TCNuBtuc",
  description: "En construction, disponible à la rentrée.",
  order: "002",
  visible: true)
p l2
#
l3 = Lecture.create!(
  software: csp, # On réutilise le software défini plus haut.
  course: bd,
  title: "Clip Studio Paint - couleur",
  video: "Hp-TCNuBtuc",
  description: "En construction, disponible à la rentrée.",
  order: "003",
  visible: true)
p l3
#
l4 = Lecture.create!(
  software: csp, # On réutilise le software défini plus haut.
  course: bd,
  title: "Clip Studio Paint - texture",
  video: "Hp-TCNuBtuc",
  description: "En construction, disponible à la rentrée.",
  order: "004",
  visible: true)
p l4
#
l5 = Lecture.create!(
  software: csp, # On réutilise le software défini plus haut.
  course: bd,
  title: "Clip Studio Paint - ombres et lumières",
  video: "Hp-TCNuBtuc",
  description: "En construction, disponible à la rentrée.",
  order: "005",
  visible: true)
p l5
#
l6 = Lecture.create!(
  software: csp, # On réutilise le software défini plus haut.
  course: bd,
  title: "Clip Studio Paint - création de cases",
  video: "Hp-TCNuBtuc",
  description: "En construction, disponible à la rentrée.",
  order: "006",
  visible: true)
p l6
#
l7 = Lecture.create!(
  software: csp, # On réutilise le software défini plus haut.
  course: bd,
  title: "Clip Studio Paint - création de bulles",
  video: "Hp-TCNuBtuc",
  description: "En construction, disponible à la rentrée.",
  order: "007",
  visible: true)
p l7
#
l8 = Lecture.create!(
  software: csp, # On réutilise le software défini plus haut.
  course: bd,
  title: "Clip Studio Paint - création de trames",
  video: "Hp-TCNuBtuc",
  description: "En construction, disponible à la rentrée.",
  order: "008",
  visible: true)
p l8
#
# --- BD NUMERIQUE --- PHOTOSHOP
#
l1 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: bd,
  title: "Photoshop - interface",
  video: "6O2qmXxMfEk",
  description: "Découverte de l'interface pour une bonne organisation.",
  order: "001",
  visible: true)
p l1
#
l2 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: bd,
  title: "Photoshop - navigation",
  video: "Hp-TCNuBtuc",
  description: "Naviguer facilement dans photoshop.",
  order: "002",
  visible: true)
p l2
#
l3 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: bd,
  title: "Photoshop - les calques",
  video: "CKhaqZpBij0",
  description: "La gestion des calques, pour une grande souplesse de travail.",
  order: "003",
  visible: true)
p l3
#
l4 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: bd,
  title: "Photoshop - les sélections",
  video: "PoNJ2z3eKcM",
  description: "Apprenons à sélectionner pour découper, remplir et transformer.",
  order: "004",
  visible: true)
p l4
#
l5 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: bd,
  title: "Photoshop - création de document",
  video: " IBLvg8327nk",
  description: "Ici vous verrez tout ce qui est indispensable pour un travail précis sur votre image : mesurer, recadrer, changer sa taille, etc.",
  order: "005",
  visible: true)
p l5
#
l6 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: bd,
  title: "Photoshop - les pinceaux de base",
  video: "fLqeUof2OnE",
  description: "Ce qu'il faut savoir pour bien commencer en peinture numérique.",
  order: "006",
  visible: true)
p l6
#
l7 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: bd,
  title: "Photoshop - dégradé",
  video: "xA3nwjkqpwc",
  description: "Familiarisez vous avec l'outil et les options de dégradés, bien utilisés ils sont très utile.",
  order: "007",
  visible: true)
p l7
#
l8 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: bd,
  title: "Photoshop - dessin avec dégradé",
  video: "tuaxCmF48B8",
  description: "Découvrez étapes par étapes la mise en couleur d'un dessin avec les dégradés.",
  order: "008",
  visible: true)
p l8
#
l9 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: bd,
  title: "Photoshop - mode de fusion",
  video: "YjlxWIIAoSY",
  description: "Option de pinceaux ou calques très utile pour tout effet de transparence et luminosité.",
  order: "009",
  visible: true)
p l9
#
l10 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: bd,
  title: "Photoshop - dégradé et mode de fusion",
  video: "I4elbvo1xMI",
  description: "Voyez comment les dégradés peuvent être utile pour la création de lumières.",
  order: "010",
  visible: true)
p l10
#
l11 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: bd,
  title: "Photoshop - les transformations ",
  video: "E44WG2BEuPk",
  description: "Avec ces outils, déformez à souhait vos photos !",
  order: "011",
  visible: true)
p l11
#
l12 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: bd,
  title: "Photoshop - réglages",
  video: "K9U_SSWKh4E",
  description: "Vous verrez les réglages qui permettent de retoucher contrastes et couleurs d'une image.",
  order: "012",
  visible: true)
p l12
#
l13 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: bd,
  title: "Photoshop - masque d'écrêtage",
  video: "L8LvftG0u1I",
  description: "Avec les masques d'écrêtage vous pourrez modifier facilement une zones précises de vos images.",
  order: "013",
  visible: true)
p l13
#
l14 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: bd,
  title: "Photoshop - mise en couleur d'un dessin",
  video: "elsdhETgv2s",
  description: "Cette technique permet une mise en couleur rapide, efficace, et propre. Et en plus, facilement modifiable.",
  order: "014",
  visible: true)
p l14
#
l15 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: bd,
  title: "Photoshop - les motifs",
  video: "Hp-TCNuBtuc",
  description: "Créer vos motifs répétable, pratique pour un tissu ou un papier peint.",
  order: "015",
  visible: true)
p l15
#
l16 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: bd,
  title: "Photoshop - raccourcis clavier",
  video: "J9_gi1CaEcY",
  description: "Cette vidéo vous rappel les raccourcis les plus utiles, mais aussi comment les personnaliser.",
  order: "016",
  visible: true)
p l16
#
l17 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: bd,
  title: "Photoshop - enregistrement",
  video: "AqH9ele51ag",
  description: "Tour d'horizon des extensions de fichiers les plus courant pour des images de qualité.",
  order: "017",
  visible: true)
p l17
#
l18 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: bd,
  title: "Photoshop - styles de calques",
  video: "gYheuetV2BM",
  description: "Ajouter facilement des effets de relief, de contour, de lumière sur vos formes. Pratique pour créer des boutons par exemple.",
  order: "018",
  visible: true)
p l18
#
l19 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: bd,
  title: "Photoshop - textes simples",
  video: "80cxP9ocgEY",
  description: "Création et options des calques de textes, personnalisez les avec les styles de calques.",
  order: "019",
  visible: true)
p l19
#
l20 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: bd,
  title: "Photoshop - les masques de fusion",
  video: "roqvM0-MtbU",
  description: "Mieux qu'une gomme, cela vous permet de masquer un bout d'image et de le ré-afficher à volonté.",
  order: "020",
  visible: true)
p l20
#
l21 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: bd,
  title: "Photoshop - autres outils de peinture",
  video: "6D_s_60AXzE",
  description: "Petits outils très pratique pour des effets précis : rendre plus net ou flou, brûler, mélanger ou étaler les couleurs.",
  order: "021",
  visible: true)
p l21
#
l22 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: bd,
  title: "Photoshop - les filtres (artistiques)",
  video: "gJ0ePmTLIxg",
  description: "Avec les filtres vous pourrez réaliser beaucoup d'effets : du flou, des aspects de peinture, des déformations...",
  order: "022",
  visible: true)
p l22
#
l23 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: bd,
  title: "Photoshop - exo, espace avec filtres",
  video: "Al6YrcXUA34",
  description: "Pas besoin de savoir dessiner pour réaliser des planètes et un ciel étoilé !",
  order: "023",
  visible: true)
p l23
#
l24 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: bd,
  title: "Photoshop - vectoriel de base",
  video: "qRTVSUOcDWI",
  description: "Découverte du dessin vectoriel. Son avantage c'est qu'il sera toujours net et ne pixelisera jamais.",
  order: "024",
  visible: true)
p l24
#
l25 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: bd,
  title: "Photoshop - options de documents",
  video: " IBLvg8327nk",
  description: "Ici vous verrez tout ce qui est indispensable pour un travail précis sur votre image : mesurer, recadrer, changer sa taille, etc.",
  order: "025",
  visible: true)
p l25
#
# --- BD NUMERIQUE --- GRAPHISME
l1 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: bd,
  title: "BD - les termes de la BD",
  video: "Hp-TCNuBtuc",
  description: "En construction.",
  order: "001",
  visible: true)
p l1
#
l2 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: bd,
  title: "BD - l'histoire de la BD",
  video: "Hp-TCNuBtuc",
  description: "En construction.",
  order: "002",
  visible: true)
p l2
#
l3 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: bd,
  title: "BD - la mise en page",
  video: "Hp-TCNuBtuc",
  description: "En construction.",
  order: "003",
  visible: true)
p l3
#
l4 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: bd,
  title: "BD - le choix des plans",
  video: "Hp-TCNuBtuc",
  description: "En construction.",
  order: "004",
  visible: true)
p l4
#
l5 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: bd,
  title: "BD - l'harmonie du contraste et des couleurs",
  video: "Hp-TCNuBtuc",
  description: "En construction.",
  order: "005",
  visible: true)
p l5
#
l6 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: bd,
  title: "Dessin - le squelette",
  video: "Hp-TCNuBtuc",
  description: "En construction.",
  order: "006",
  visible: true)
p l6
#
l7 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: bd,
  title: "Dessin - le corps en volume",
  video: "Hp-TCNuBtuc",
  description: "En construction.",
  order: "007",
  visible: true)
p l7
#
l8 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: bd,
  title: "Dessin - les attitudes",
  video: "Hp-TCNuBtuc",
  description: "En construction.",
  order: "008",
  visible: true)
p l8
#
#-----------------------------------------------------------------------------------------------------------------------------
# --- INFOGRAPHIE PRINT --- PHOTOSHOP
l0 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: pr,
  title: "Atelier d'infographie gratuit",
  video: "6KKsaIHAwvc",
  description: "Un bon projet a une charte graphique. Elle renseigne toutes les règles à suivre.",
  order: "000",
  visible: true)
p l0
#
l1 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: pr,
  title: "Photoshop - interface",
  video: "6O2qmXxMfEk",
  description: "Découverte de l'interface pour une bonne organisation.",
  order: "001",
  visible: true)
p l1
#
l2 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: pr,
  title: "Photoshop - navigation",
  video: "Hp-TCNuBtuc",
  description: "Naviguer facilement dans photoshop.",
  order: "002",
  visible: true)
p l2
#
l3 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: pr,
  title: "Photoshop - les calques",
  video: "CKhaqZpBij0",
  description: "La gestion des calques, pour une grande souplesse de travail.",
  order: "003",
  visible: true)
p l3
#
l4 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: pr,
  title: "Photoshop - les sélections",
  video: "PoNJ2z3eKcM",
  description: "Apprenons à sélectionner pour découper, remplir et transformer.",
  order: "004",
  visible: true)
p l4
#
l5 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: pr,
  title: "Photoshop - création de document",
  video: " IBLvg8327nk",
  description: "Ici vous verrez tout ce qui est indispensable pour un travail précis sur votre image : mesurer, recadrer, changer sa taille, etc.",
  order: "005",
  visible: true)
p l5
#
l6 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: pr,
  title: "Photoshop - dégradé",
  video: "xA3nwjkqpwc",
  description: "Familiarisez vous avec l'outil et les options de dégradés, bien utilisés ils sont très utile.",
  order: "006",
  visible: true)
p l6
#
l7 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: pr,
  title: "Photoshop - dessin avec dégradé",
  video: "tuaxCmF48B8",
  description: "Découvrez étapes par étapes la mise en couleur d'un dessin avec les dégradés.",
  order: "007",
  visible: true)
p l7
#
l8 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: pr,
  title: "Photoshop - mode de fusion",
  video: "YjlxWIIAoSY",
  description: "Option de pinceaux ou calques très utile pour tout effet de transparence et luminosité.",
  order: "008",
  visible: true)
p l8
#
l9 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: pr,
  title: "Photoshop - dégradé et mode de fusion",
  video: "I4elbvo1xMI",
  description: "Voyez comment les dégradés peuvent être utile pour la création de lumières.",
  order: "009",
  visible: true)
p l9
#
l10 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: pr,
  title: "Photoshop - les transformations",
  video: "E44WG2BEuPk",
  description: "Avec ces outils, déformez à souhait vos photos !",
  order: "010",
  visible: true)
p l10
#
l11 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: pr,
  title: "Photoshop - réglages",
  video: "K9U_SSWKh4E",
  description: "Vous verrez les réglages qui permettent de retoucher contrastes et couleurs d'une image.",
  order: "011",
  visible: true)
p l11
#
l12 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: pr,
  title: "Photoshop - masque d'écrêtage",
  video: "L8LvftG0u1I",
  description: "Avec les masques d'écrêtage vous pourrez modifier facilement une zones précises de vos images.",
  order: "012",
  visible: true)
p l12
#
l13 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: pr,
  title: "Photoshop - raccourcis clavier",
  video: "J9_gi1CaEcY",
  description: "Cette vidéo vous rappel les raccourcis les plus utiles, mais aussi comment les personnaliser.",
  order: "013",
  visible: true)
p l13
#
l14 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: pr,
  title: "Photoshop - enregistrement",
  video: "AqH9ele51ag",
  description: "Tour d'horizon des extensions de fichiers les plus courant pour des images de qualité.",
  order: "014",
  visible: true)
p l14
#
l15 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: pr,
  title: "Photoshop - enregistrement pour le web",
  video: "ArkMXoCHtfU",
  description: "Vous verrez comment optimiser le poids et la qualité vos images à mettre en ligne.",
  order: "015",
  visible: true)
p l15
#
l16 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: pr,
  title: "Photoshop - correction, suppression",
  video: "o_vRXBE3yss",
  description: "Ces outils de corrections vous permettront de supprimer, par exemple, les poteaux électrique de vos photos de vacances.",
  order: "016",
  visible: true)
p l16
#
l17 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: pr,
  title: "Photoshop - styles de calques",
  video: "gYheuetV2BM",
  description: "Ajouter facilement des effets de relief, de contour, de lumière sur vos formes. Pratique pour créer des boutons par exemple.",
  order: "017",
  visible: true)
p l17
#
l18 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: pr,
  title: "Photoshop - textes simples",
  video: "80cxP9ocgEY",
  description: "Création et options des calques de textes, personnalisez les avec les styles de calques.",
  order: "018",
  visible: true)
p l18
#
l19 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: pr,
  title: "Photoshop - options de documents",
  video: " IBLvg8327nk",
  description: "Ici vous verrez tout ce qui est indispensable pour un travail précis sur votre image : mesurer, recadrer, changer sa taille, etc.",
  order: "019",
  visible: true)
p l19
#
l20 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: pr,
  title: "Photoshop - les masques de fusion",
  video: "roqvM0-MtbU",
  description: "Mieux qu'une gomme, cela vous permet de masquer un bout d'image et de le ré-afficher à volonté.",
  order: "020",
  visible: true)
p l20
#
l21 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: pr,
  title: "Photoshop - sélections avancées",
  video: "h6B5bUOpmOc",
  description: "Ces outils et options vous faciliteront la sélection sur des fonds complexes ou encore des cheveux.",
  order: "021",
  visible: true)
p l21
#
l22 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: pr,
  title: "Photoshop - les filtres (artistiques)",
  video: "gJ0ePmTLIxg",
  description: "Avec les filtres vous pourrez réaliser beaucoup d'effets : du flou, des aspects de peinture, des déformations...",
  order: "022",
  visible: true)
p l22
#
l23 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: pr,
  title: "Photoshop - les filtres (photos)",
  video: "v8lcT4ZwI4s",
  description: "Améliorer l'angle de vos photos, découvrez aussi comment retoucher une silhouette.",
  order: "023",
  visible: true)
p l23
#
l24 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: pr,
  title: "Photoshop - matte painting",
  video: "Hp-TCNuBtuc",
  description: "En construction."
  order: "024",
  visible: true)
p l24
#
l25 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: pr,
  title: "Photoshop - vectoriel de base",
  video: "qRTVSUOcDWI",
  description: "Découverte du dessin vectoriel. Son avantage c'est qu'il sera toujours net et ne pixelisera jamais.",
  order: "025",
  visible: true)
p l25
#
l26 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: pr,
  title: "Photoshop - vectoriel, la plume",
  video: "uZUkuujh6ss",
  description: "Le dessin vectoriel à la plume, une fois maitrisé, vous garanti un tracé propre, net et précis.",
  order: "026",
  visible: true)
p l26
#
l27 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: pr,
  title: "Photoshop - textes et vectoriel",
  video: "Hp-TCNuBtuc",
  description: "Le texte peut être guider par les ligne des formes vectorielles. ",
  order: "027",
  visible: true)
p l27
#
l28 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: pr,
  title: "Photoshop - détourage complexe",
  video: "zgC8xL3fFHQ",
  description: "Pour les cas complexes de détourage de cheveux.",
  order: "028",
  visible: true)
p l28
#
l29 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: pr,
  title: "Photoshop - réglages 2",
  video: "Trxf2AX4a44",
  description: "Des réglages permettant d'améliorer l'aspect artistique de vos photos.",
  order: "029",
  visible: true)
p l29
#
l30 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: pr,
  title: "Photoshop - script d'actions",
  video: "Hp-TCNuBtuc",
  description: "Avec les scripts, vous pourrez appliquer une même action sur un très grand nombre d'images. Vous gagnerez du temps !",
  order: "030",
  visible: true)
p l30
#
l31 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: pr,
  title: "Photoshop - exo, éclatement",
  video: "RcRtBOyu-b4",
  description: "Une personne ou un élément qui se décompose en particules, c'est un effet toujours recherché.",
  order: "031",
  visible: true)
p l31
#
l32 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: pr,
  title: "Photoshop - exo, textes sur portrait",
  video: "1Pp4JYW_F_o",
  description: "Quelques techniques pour faire de sympathique effet de photos dans du texte.",
  order: "032",
  visible: true)
p l32
#
l33 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: pr,
  title: "Photoshop - panoramique",
  video: "8CexIO4RVW0",
  description: "Les appareils photos récents proposent la fonction panoramique, mais il est toujours intéressant de savoir le faire soit même !",
  order: "033",
  visible: true)
p l33
#
l34 = Lecture.create!(
  software: ph, # On réutilise le software défini plus haut.
  course: pr,
  title: "Photoshop - photo HDR",
  video: "941kLvsu3Rw",
  description: "Une photo HDR à une plage de lumières et couleurs plus large qu'une photo classique. Ici vous verrez comment créer et retoucher à la main votre photo HDR. ",
  order: "034",
  visible: true)
p l34
#
# --- INFOGRAPHIE PRINT --- ILLUSTRATOR
l1 = Lecture.create!(
  software: ai, # On réutilise le software défini plus haut.
  course: pr,
  title: "Illustrator - interface",
  video: "GDVXPKUujOs",
  description: "Découverte de la logique du dessin vectoriel et d'Illustrator.",
  order: "001",
  visible: true)
p l1
#
l2 = Lecture.create!(
  software: ai, # On réutilise le software défini plus haut.
  course: pr,
  title: "Illutrator - création de base",
  video: "G3b4KNLQobE",
  description: "Bien débuter la création et manipulation de formes.",
  order: "002",
  visible: true)
p l2
#
l3 = Lecture.create!(
  software: ai, # On réutilise le software défini plus haut.
  course: pr,
  title: "Illustrator - gestions des couleurs",
  video: "fKfvNN65sv8",
  description: "Mettez de la couleur dans vos dessins !",
  order: "003",
  visible: true)
p l3
#
l4 = Lecture.create!(
  software: ai, # On réutilise le software défini plus haut.
  course: pr,
  title: "Illustrator - outils de dessin",
  video: "msEyfyOhoKc",
  description: "Différents outils pour différentes techniques de dessins.",
  order: "004",
  visible: true)
p l4
#
l5 = Lecture.create!(
  software: ai, # On réutilise le software défini plus haut.
  course: pr,
  title: "Illustrator - assemblage de formes",
  video: "D6uLPFeZ_E8",
  description: "Combiner des formes simples avec les outils présentés ici. Vous obtiendrez des formes qui auraient été complexes à créer autrement.",
  order: "005",
  visible: true)
p l5
#
l6 = Lecture.create!(
  software: ai, # On réutilise le software défini plus haut.
  course: pr,
  title: "Illustrator - retouche de tracés",
  video: "3qWsnOdEvMA",
  description: "Améliorer les tracés que vous avez dessinez pour obtenir un visuel parfait.",
  order: "006",
  visible: true)
p l6
#
l7 = Lecture.create!(
  software: ai, # On réutilise le software défini plus haut.
  course: pr,
  title: "Illustrator - dégradés",
  video: "sgHUZraSHco",
  description: "Illustrator propose des outils de dégradés puissant et très utile.",
  order: "007",
  visible: true)
p l7
#
l8 = Lecture.create!(
  software: ai, # On réutilise le software défini plus haut.
  course: pr,
  title: "Illustrator - vectorisation",
  video: "NDvRZrLRlk4",
  description: "Transformez une image classique en dessin vectoriel. Découvrez les subtilités.",
  order: "008",
  visible: true)
p l8
#
l9 = Lecture.create!(
  software: ai, # On réutilise le software défini plus haut.
  course: pr,
  title: "Illustrator - textes",
  video: "92fPsQqAAII",
  description: "L'outil texte à de nombreuses options et est très puissant dans Illustrator.",
  order: "009",
  visible: true)
p l9
#
l10 = Lecture.create!(
  software: ai, # On réutilise le software défini plus haut.
  course: pr,
  title: "Illustrator - effets et fenêtre aspect",
  video: "El8eYIqQtZ8",
  description: "La fenêtre aspect regroupe toutes les options de modification graphique d'une forme, parfait pour gérer l'ensemble de ces effets. ",
  order: "010",
  visible: true)
p l10
#
l11 = Lecture.create!(
  software: ai, # On réutilise le software défini plus haut.
  course: pr,
  title: "Illustrator - gestion et export de document, bases",
  video: "_mvSyO5PJvA",
  description: "Enregistrer vos images dans les formats les plus courants (ai,svg,pdf,jpg,png). ",
  order: "011",
  visible: true)
p l11
#
l12 = Lecture.create!(
  software: ai, # On réutilise le software défini plus haut.
  course: pr,
  title: "Illustrator - grille de perspective",
  video: "TGDj6i6L9tM",
  description: "Créer une grille de perspective vous donnera des repères facile à suivre pour tout dessin en perspective.",
  order: "012",
  visible: true)
p l12
#
l13 = Lecture.create!(
  software: ai, # On réutilise le software défini plus haut.
  course: pr,
  title: "Illustrator - dégradé de formes",
  video: "BdI-JfFBabY",
  description: "Vous pourrez faire du morphing entre 2 formes.",
  order: "013",
  visible: true)
p l13
#
l14 = Lecture.create!(
  software: ai, # On réutilise le software défini plus haut.
  course: pr,
  title: "Illustrator - duplication et transformation",
  video: "T0i3EsNbGmw",
  description: "Cumulez rapidement les duplications !",
  order: "014",
  visible: true)
p l14
#
l15 = Lecture.create!(
  software: ai, # On réutilise le software défini plus haut.
  course: pr,
  title: "Illustrator - création de pinceaux",
  video: "62vBiQIobSc",
  description: "Créez des pinceaux de toutes formes.",
  order: "015",
  visible: true)
p l15
#
l16 = Lecture.create!(
  software: ai, # On réutilise le software défini plus haut.
  course: pr,
  title: "Illustrator - les symboles",
  video: "nPP546tu1Kk",
  description: "Stockez vos formes pour pouvoir les réutiliser autant que vous voulez.",
  order: "016",
  visible: true)
p l16
#
l17 = Lecture.create!(
  software: ai, # On réutilise le software défini plus haut.
  course: pr,
  title: "Illustrator - effet 3D",
  video: "R5zW7_WCobU",
  description: "Donnez du volume à vos tracés 2D.",
  order: "017",
  visible: true)
p l17
#
l18 = Lecture.create!(
  software: ai, # On réutilise le software défini plus haut.
  course: pr,
  title: "Illustrator - style graphique",
  video: "jIyZNGrr0LE",
  description: "Créez des effets graphique et réutilisez les à volonté.",
  order: "018",
  visible: true)
p l18
#
l19 = Lecture.create!(
  software: ai, # On réutilise le software défini plus haut.
  course: pr,
  title: "Illustrator - alignement",
  video: "3GdHXAgRcC0",
  description: "Pour être précis dans le placement de vos objets.",
  order: "019",
  visible: true)
p l19
#
l20 = Lecture.create!(
  software: ai, # On réutilise le software défini plus haut.
  course: pr,
  title: "Illustrator - plan de travail",
  video: "iXxOJqcyHig",
  description: "Utilisez les plans de travail vous permet de facilement comparer et créer plusieurs versions de votre création.",
  order: "020",
  visible: true)
p l20
#
l21 = Lecture.create!(
  software: ai, # On réutilise le software défini plus haut.
  course: pr,
  title: "Illustrator - packaging",
  video: "84sako8u5kc",
  description: "Créez un packaging demande de la précision. Ici découvrez 2 méthodes efficaces.",
  order: "021",
  visible: true)
p l21
#
l22 = Lecture.create!(
  software: ai, # On réutilise le software défini plus haut.
  course: pr,
  title: "Illustrator - passage vers photoshop",
  video: "xq5aEFpZkRg",
  description: "Interaction entre Illustrator et Photoshop.",
  order: "022",
  visible: true)
p l22
#
l23 = Lecture.create!(
  software: ai, # On réutilise le software défini plus haut.
  course: pr,
  title: "Illustrator - export",
  video: "erOAoKJGM40",
  description: "Exporter vos documents pour pouvoir les partager ou les retravailler dans d'autres logiciels.",
  order: "023",
  visible: true)
p l23
#
# --- INFOGRAPHIE PRINT --- INDESIGN
l1 = Lecture.create!(
  software: ind, # On réutilise le software défini plus haut.
  course: pr,
  title: "Indesign - interface",
  video: "uQC96z7znPc",
  description: "Découvrez l'interface d'Indesign.",
  order: "001",
  visible: true)
p l1
#
l2 = Lecture.create!(
  software: ind, # On réutilise le software défini plus haut.
  course: pr,
  title: "Indesign - blocs de base",
  video: "-y6HZNIQjUc",
  description: "L'utilisation des blocs dans une mise en pages.",
  order: "002",
  visible: true)
p l2
#
l3 = Lecture.create!(
  software: ind, # On réutilise le software défini plus haut.
  course: pr,
  title: "Indesign - blocs d'images",
  video: "oLDHUhWyUe4",
  description: "Tout ce qu'il faut savoir sur les images dans Indesign.",
  order: "003",
  visible: true)
p l3
#
l4 = Lecture.create!(
  software: ind, # On réutilise le software défini plus haut.
  course: pr,
  title: "Indesign - blocs de textes",
  video: "tPZ-o9oSZcI",
  description: "Bien utiliser le texte dans vos blocs.",
  order: "004",
  visible: true)
p l4
#
l5 = Lecture.create!(
  software: ind, # On réutilise le software défini plus haut.
  course: pr,
  title: "Indesign - habillage de textes",
  video: "8QK-A4HeDmU",
  description: "Votre texte peut suivre les contours de vos images.",
  order: "005",
  visible: true)
p l5
#
l6 = Lecture.create!(
  software: ind, # On réutilise le software défini plus haut.
  course: pr,
  title: "Indesign - alignement",
  video: "MbJkWUweEYY",
  description: "Pour être précis dans le placement de vos blocs.",
  order: "006",
  visible: true)
p l6
#
l7 = Lecture.create!(
  software: ind, # On réutilise le software défini plus haut.
  course: pr,
  title: "Indesign - modification de pages, bases",
  video: "Drz3g2HFk_g",
  description: "Retouchez à tout moment l'ordre, la taille, les marges de vos pages.",
  order: "007",
  visible: true)
p l7
#
l8 = Lecture.create!(
  software: ind, # On réutilise le software défini plus haut.
  course: pr,
  title: "Indesign - nuancier",
  video: "1mSgWqYw9G0",
  description: "Créez ou importer un nuancier de couleurs.",
  order: "008",
  visible: true)
p l8
#
l9 = Lecture.create!(
  software: ind, # On réutilise le software défini plus haut.
  course: pr,
  title: "Indesign - export",
  video: "QuDFsJjfcq8",
  description: "Enregistrez vos fichiers en PDF et JPG.",
  order: "009",
  visible: true)
p l9
#
l10 = Lecture.create!(
  software: ind, # On réutilise le software défini plus haut.
  course: pr,
  title: "InDesign - styles de textes",
  video: "1-I0QcO9g40",
  description: "Avec ces styles, vous pourrez unifier vos documents. Plus de risques d'avoir des titres dépareiller en couleur ou taille de police.",
  order: "010",
  visible: true)
p l10
#
l11 = Lecture.create!(
  software: ind, # On réutilise le software défini plus haut.
  course: pr,
  title: "InDesign - styles d'objet",
  video: "-zw5dps8ux4",
  description: "Personnalisez l'aspect de vos blocs et réutiliser ce style à volonté.",
  order: "011",
  visible: true)
p l11
#
l12 = Lecture.create!(
  software: ind, # On réutilise le software défini plus haut.
  course: pr,
  title: "InDesign - gestion d'images",
  video: "zZOOd7RaPsU",
  description: "Ce qu'il faut savoir pour bien manipuler ses images.",
  order: "012",
  visible: true)
p l12
#
l13 = Lecture.create!(
  software: ind, # On réutilise le software défini plus haut.
  course: pr,
  title: "InDesign - gestion de pages",
  video: "ILrwvkZ3kK8",
  description: "Gérez l'ordre des pages pour l'impression, en pensant à la reliure.",
  order: "013",
  visible: true)
p l13
#
l14 = Lecture.create!(
  software: ind, # On réutilise le software défini plus haut.
  course: pr,
  title: "InDesign - les gabarits",
  video: "O_cJ1q77WF4",
  description: "Créez des visuels qui apparaitront sur toutes les pages de votre livre.",
  order: "014",
  visible: true)
p l14
#
l15 = Lecture.create!(
  software: ind, # On réutilise le software défini plus haut.
  course: pr,
  title: "InDesign - colonnes et tableaux",
  video: "H9yPaQs9B2c",
  description: "Variez vos mises en pages avec des colonnes et organisez vos informations en tableaux.",
  order: "015",
  visible: true)
p l15
#
l16 = Lecture.create!(
  software: ind, # On réutilise le software défini plus haut.
  course: pr,
  title: "InDesign - création d'un sommaire",
  video: "Neb-VN8vkXg",
  description: "Apprenez à créer un sommaire automatique.",
  order: "016",
  visible: true)
p l16
#
l17 = Lecture.create!(
  software: ind, # On réutilise le software défini plus haut.
  course: pr,
  title: "InDesign - règles de texte",
  video: "LGTyrTKJhUk",
  description: "Règles de mise en page, correcteur d'orthographe... Ces différents points sont important pour un document pro.",
  order: "017",
  visible: true)
p l17
#
# --- INFOGRAPHIE PRINT --- GRAPHISME
l1 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: pr,
  title: "Print - logos",
  video: "bwOBRo4cAvs",
  description: "Les questions qu'il faut se poser pour créer un logos.",
  order: "001",
  visible: true)
p l1
#
l2 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: pr,
  title: "Print - charte graphique",
  video: "6KKsaIHAwvc",
  description: "Un bon projet a une charte graphique. Elle renseigne toutes les règles à suivre.",
  order: "002",
  visible: true)
p l2
#
l3 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: pr,
  title: "Print - couleurs, intro",
  video: "poybBd_tGtM",
  description: "Comprendre le CMJN, les pantones et les tons directs pour obtenir de belles couleurs à l'impression.",
  order: "003",
  visible: true)
p l3
#
l4 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: pr,
  title: "Print - gestion des couleurs, illustrator",
  video: "4RBvKKm_QVA",
  description: "Ce qu'il faut savoir sur les couleurs  pour imprimer un document Illustrator.",
  order: "004",
  visible: true)
p l4
#
l5 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: pr,
  title: "Print - gestion des couleurs, indesign",
  video: "hogeRGKw8g8",
  description: "Ce qu'il faut savoir sur les couleurs  pour imprimer un document Indesign.",
  order: "005",
  visible: true)
p l5
#
l6 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: pr,
  title: "Print - gestion des couleurs, photoshop",
  video: "km1Jhr5ZTv4",
  description: "Ce qu'il faut savoir sur les couleurs  pour imprimer un document Photoshop.",
  order: "006",
  visible: true)
p l6
#
l7 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: pr,
  title: "Print - points commun entre les logiciels",
  video: "zZjFBgEVuB4",
  description: "Liste des problèmes fréquents de couleurs et leurs solutions.",
  order: "007",
  visible: true)
p l7
#
l8 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: pr,
  title: "Print - traits de coupe",
  video: "KRHW0vHtk3U",
  description: "Créez des repères pour indiquer où plier et couper le futur document imprimé.",
  order: "008",
  visible: true)
p l8
#
l9 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: pr,
  title: "Print - créer une police",
  video: "_GBdrMiFaAM",
  description: "Créez votre propre Police ! Originalité garantie et pas de soucis de droits d'auteur.",
  order: "009",
  visible: true)
p l9
#
l10 = Lecture.create!(
  software: gra, # On réutilise le software défini plus haut.
  course: pr,
  title: "Print - possibilité d'impression",
  video: "M3s4gSRvPro",
  description: "Pour imprimer, il faut choisir son papier ! Ce support permet aussi des effets de gauffrage et vernis.",
  order: "010",
  visible: true)
p l10
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
ul2 = UsersLecture.create!(
  user: u2,
  lecture: ll1,
  note: "Appréciation.")
p ul2
#
ul3 = UsersLecture.create!(
  user: u2,
  lecture: ll1,
  note: "Appréciation.")
p ul3
#
# ==================== Realisation ====================
# === Au moins 3 dans chaque cours
#----------------------------------------------------------------------------- MULTIMEDIA 2D
r1 = Realisation.create!(
  course: m2d,
  user: u1,
  title: "Zepplin, univers en montage photos",
  link: "http://www.virtualart.pro/images/rea/2d/zepplin.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/zepplin.jpg")
p r1
#
r2 = Realisation.create!(
  course: m2d,
  user: u1,
  title: "Décor de jour et nuit pour l'animation des -Chroniques Yndrawiques-",
  link: "http://www.virtualart.pro/images/rea/2d/yn1.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/yn1.jpg")
p r2
#
r3 = Realisation.create!(
  course: m2d,
  user: u1,
  title: "Décor de la taverne pour l'animation des -Chroniques Yndrawiques-",
  link: "http://www.virtualart.pro/images/rea/2d/yn2.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/yn2.jpg")
p r3
#
r4 = Realisation.create!(
  course: m2d,
  user: u1,
  title: "Décor des îles pour l'animation des -Chroniques Yndrawiques-",
  link: "http://www.virtualart.pro/images/rea/2d/yn3.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/yn3.jpg")
p r4
#
r5 = Realisation.create!(
  course: m2d,
  user: u1,
  title: "Décor pour l'animation des -Chroniques Yndrawiques-",
  link: "http://www.virtualart.pro/images/rea/2d/yn4.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/yn4.jpg")
p r5
#
r6 = Realisation.create!(
  course: m2d,
  user: u1,
  title: "Extraits de l'animation des -Chroniques Yndrawiques-",
  link: "http://www.virtualart.pro/images/rea/2d/yn5.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/yn5.jpg")
p r6
#
r7 = Realisation.create!(
  course: m2d,
  user: u1,
  title: "Guerre contre les robots",
  link: "http://www.virtualart.pro/images/rea/2d/combat.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/combat.jpg")
p r7
#
r8 = Realisation.create!(
  course: m2d,
  user: u2,
  title: "Illustration de couverture de livre",
  link: "http://www.virtualart.pro/images/rea/2d/couverture1.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/couverture1.jpg")
p r8
#
r9 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Illustration de couverture de livre",
  link: "http://www.virtualart.pro/images/rea/2d/couverture2.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/couverture2.jpg")
p r9
#
r10 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Chimère en montage photos",
  link: "http://www.virtualart.pro/images/rea/2d/aigle.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/aigle.jpg")
p r10
#
r11 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Arbre magique",
  link: "http://www.virtualart.pro/images/rea/2d/arbre2.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/arbre2.jpg")
p r11
#
r12 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Travail d'architecture",
  link: "http://www.virtualart.pro/images/rea/2d/archi1.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/archi1.jpg")
p r12
#
r13 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Extrait de montage de film",
  link: "http://www.virtualart.pro/images/rea/2d/avion.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/avion.jpg")
p r13
#
r14 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Montage photos sur le thème d'Harry Potter",
  link: "http://www.virtualart.pro/images/rea/2d/baguette.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/baguette.jpg")
p r14
#
r15 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Bannière Youtube",
  link: "http://www.virtualart.pro/images/rea/2d/banniere1.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/banniere1.jpg")
p r15
#
r16 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Bannière Youtube",
  link: "http://www.virtualart.pro/images/rea/2d/banniere2.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/banniere2.jpg")
p r16
#
r17 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Carte de Baptême",
  link: "http://www.virtualart.pro/images/rea/2d/carte1.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/carte1.jpg")
p r17
#
r18 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Montage photos de marmottes pour la fête des mères",
  link: "http://www.virtualart.pro/images/rea/2d/carte2.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/carte2.jpg")
p r18
#
r19 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Cascade en peinture numérique",
  link: "http://www.virtualart.pro/images/rea/2d/cascade.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/cascade.jpg")
p r19
#
r20 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Décors de cave pour une animation",
  link: "http://www.virtualart.pro/images/rea/2d/cave.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/cave.jpg")
p r20
#
r21 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Dessin de cerf, mélangeant le numérique et l'aquarelle",
  link: "http://www.virtualart.pro/images/rea/2d/cerf.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/cerf.jpg")
p r21
#
r22 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Chat dans son jardin",
  link: "http://www.virtualart.pro/images/rea/2d/chat.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/chat.jpg")
p r22
#
r23 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Montage photos d'un chat qui surf",
  link: "http://www.virtualart.pro/images/rea/2d/chatsurf.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/chatsurf.jpg")
p r23
#
r24 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Cheval de feu",
  link: "http://www.virtualart.pro/images/rea/2d/cheval.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/cheval.jpg")
p r24
#
r25 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Joggeuse dans un parc",
  link: "http://www.virtualart.pro/images/rea/2d/cours.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/cours.jpg")
p r25
#
r26 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Dame et ses chiens : dessin incrusté dans une photo",
  link: "http://www.virtualart.pro/images/rea/2d/dame1.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/dame1.jpg")
p r26
#
r27 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Décor en montage photo pour un projet d'animation",
  link: "http://www.virtualart.pro/images/rea/2d/decor1.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/decor1.jpg")
p r27
#
r28 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Désert",
  link: "http://www.virtualart.pro/images/rea/2d/desert1.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/desert1.jpg")
p r28
#
r29 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Femme et son dragon, croquis et finition sur photoshop",
  link: "http://www.virtualart.pro/images/rea/2d/dragon.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/dragon.jpg")
p r29
#
r30 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "planète en peinture numérique",
  link: "http://www.virtualart.pro/images/rea/2d/drawing.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/drawing.jpg")
p r30
#
r31 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Estampe numérique",
  link: "http://www.virtualart.pro/images/rea/2d/estampe1.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/estampe1.jpg")
p r31
#
r32 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Femme chat",
  link: "http://www.virtualart.pro/images/rea/2d/femmechat.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/femmechat.jpg")
p r32
#
r33 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Fille style SD",
  link: "http://www.virtualart.pro/images/rea/2d/fille.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/fille.jpg")
p r33
#
r34 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Fleur en dessin et dégradé",
  link: "http://www.virtualart.pro/images/rea/2d/fleurs1.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/fleurs1.jpg")
p r34
#
r35 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Croquis numérique de fleurs ",
  link: "http://www.virtualart.pro/images/rea/2d/fleurs2.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/fleurs2.jpg")
p r35
#
r36 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Exercices de fruits en peinture numérique",
  link: "http://www.virtualart.pro/images/rea/2d/fruit.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/fruit.jpg")
p r36
#
r37 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Dessin de hibou au stylot et couleur sur Photoshop",
  link: "http://www.virtualart.pro/images/rea/2d/hibou.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/hibou.jpg")
p r37
#
r38 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Montage photos pour la fête des mères",
  link: "http://www.virtualart.pro/images/rea/2d/juju.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/juju.jpg")
p r38
#
r39 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Croquis et montage photos d'une femme en kimono ",
  link: "http://www.virtualart.pro/images/rea/2d/kimono.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/kimono.jpg")
p r39
#
r40 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Dessin en 2 traitements graphique différent sur Photoshop",
  link: "http://www.virtualart.pro/images/rea/2d/kioko.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/kioko.jpg")
p r40
#
r41 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Evolution du dessin de Link",
  link: "http://www.virtualart.pro/images/rea/2d/link.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/link.jpg")
p r41
#
r42 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Lionfish au crayon et couleur numérique",
  link: "http://www.virtualart.pro/images/rea/2d/lionfish.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/lionfish.jpg")
p r42
#
r43 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Etendard de faction",
  link: "http://www.virtualart.pro/images/rea/2d/logo.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/logo.jpg")
p r43
#
r44 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Luigi et les fantômes, effets de lumière sous Photoshop",
  link: "http://www.virtualart.pro/images/rea/2d/luigimanson.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/luigimanson.jpg")
p r44
#
r45 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Magicienne",
  link: "http://www.virtualart.pro/images/rea/2d/mage1.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/mage1.jpg")
p r45
#
r46 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Magicienne et effet de texture",
  link: "http://www.virtualart.pro/images/rea/2d/mage2.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/mage2.jpg")
p r46
#
r47 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "fée",
  link: "http://www.virtualart.pro/images/rea/2d/mage3.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/mage3.jpg")
p r47
#
r48 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Sort de feu pour travail d'ombres et lumières",
  link: "http://www.virtualart.pro/images/rea/2d/mage4.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/mage4.jpg")
p r48
#
r49 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Belle maison",
  link: "http://www.virtualart.pro/images/rea/2d/maison1.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/maison1.jpg")
p r49
#
r50 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Décor d'intérieur de maison pour un projet d'animation",
  link: "http://www.virtualart.pro/images/rea/2d/maison2.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/maison2.jpg")
p r50
#
r51 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Fiche du personnage Manon",
  link: "http://www.virtualart.pro/images/rea/2d/manon.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/manon.jpg")
p r51
#
r52 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Dessin de nain au crayon et couleur numérique",
  link: "http://www.virtualart.pro/images/rea/2d/nain.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/nain.jpg")
p r52
#
r53 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Bonhomme de neige en dessin vectoriel",
  link: "http://www.virtualart.pro/images/rea/2d/neige.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/neige.jpg")
p r53
#
r54 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Carte de Noël",
  link: "http://www.virtualart.pro/images/rea/2d/noel.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/noel.jpg")
p r54
#
r55 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Joyeux noël en pixel",
  link: "http://www.virtualart.pro/images/rea/2d/noelpxl.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/noelpxl.jpg")
p r55
#
r56 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Couverture de CD",
  link: "http://www.virtualart.pro/images/rea/2d/nuitjour.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/nuitjour.jpg")
p r56
#
r57 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Dessin de papillons texturés sur photo",
  link: "http://www.virtualart.pro/images/rea/2d/papillon.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/papillon.jpg")
p r57
#
r58 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Personnage pour un projet BD",
  link: "http://www.virtualart.pro/images/rea/2d/perso1.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/perso1.jpg")
p r58
#
r59 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Femme Phenix",
  link: "http://www.virtualart.pro/images/rea/2d/pheniw.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/phenix.jpg")
p r59
#
r60 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Exercice de dessin de rocher en peinture numérique",
  link: "http://www.virtualart.pro/images/rea/2d/pierre.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/pierre.jpg")
p r60
#
r61 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Espace et panète entièrement fait avec les filtres et FX Photoshop",
  link: "http://www.virtualart.pro/images/rea/2d/planete.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/planete.jpg")
p r61
#
r62 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Météorite avec effet 3D de Photoshop",
  link: "http://www.virtualart.pro/images/rea/2d/planete3d.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/planete3d.jpg")
p r62
#
r63 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "poissons de toutes les couleurs ",
  link: "http://www.virtualart.pro/images/rea/2d/poisson.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/poisson.jpg")
p r63
#
r64 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Visage et effet de textures",
  link: "http://www.virtualart.pro/images/rea/2d/portrait.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/portrait.jpg")
p r64
#
r65 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Poussin et travail du plumage",
  link: "http://www.virtualart.pro/images/rea/2d/poussin.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/poussin.jpg")
p r65
#
r66 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Raton laveur et travail du poil",
  link: "http://www.virtualart.pro/images/rea/2d/raton.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/raton.jpg")
p r66
#
r67 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Pyroman, dessin en sélections et aplat de couleur",
  link: "http://www.virtualart.pro/images/rea/2d/pyro.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/pyro.jpg")
p r67
#
r68 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Recherche de personnage",
  link: "http://www.virtualart.pro/images/rea/2d/pyrok.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/pyrok.jpg")
p r68
#
r69 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Metalleux, mélange de crayons et numérique",
  link: "http://www.virtualart.pro/images/rea/2d/rock.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/rock.jpg")
p r69
#
r70 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "L'homme dans un désert hostile",
  link: "http://www.virtualart.pro/images/rea/2d/sable.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/sable.jpg")
p r70
#
r71 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Samouraï au feutre et composition numérique",
  link: "http://www.virtualart.pro/images/rea/2d/samourai.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/samourai.jpg")
p r71
#
r72 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Sirène dans l'eau",
  link: "http://www.virtualart.pro/images/rea/2d/sirene.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/sirene.jpg")
p r72
#
r73 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Forêt enchantée",
  link: "http://www.virtualart.pro/images/rea/2d/sphere.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/sphere.jpg")
p r73
#
r74 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Tak, personnage pour un projet BD",
  link: "http://www.virtualart.pro/images/rea/2d/tak.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/tak.jpg")
p r74
#
r75 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Dame et fleurs : dessin incrusté dans une photo ",
  link: "http://www.virtualart.pro/images/rea/2d/dame2.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/dame2.jpg")
p r75
#
r76 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Viking, travail d'ombres et textures",
  link: "http://www.virtualart.pro/images/rea/2d/viking.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/viking.jpg")
p r76
#
r77 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Histoires dont tu es le héros avec dessin sur Photoshop et navigation sur Powerpoint",
  link: "http://www.virtualart.pro/images/rea/2d/pp.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/pp.jpg")
p r77
#
r78 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Recherche de personnage : turn-around",
  link: "http://www.virtualart.pro/images/rea/2d/turnaround1.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/turnaround2.jpg")
p r78
#
r79 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Page 1 du Storyboard des -Chroniques Yndrawique-",
  link: "http://www.virtualart.pro/images/rea/2d/storyyn1.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/storyyn1.jpg")
p r79
#
r80 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Page 2 du Storyboard des -Chroniques Yndrawique-",
  link: "http://www.virtualart.pro/images/rea/2d/storyyn2.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/storyyn2.jpg")
p r80
#
r81 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Page de Storyboard",
  link: "http://www.virtualart.pro/images/rea/2d/story.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/story.jpg")
p r81
#
r82 = Realisation.create!(
  course: m2d,
  user: u3,
  title: "Page 1 du Storyboard des -Chroniques Yndrawique-",
  link: "http://www.virtualart.pro/images/rea/2d/storyyn1.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 2d/storyyn1.jpg")
p r82
#
r83 = Realisation.create!(
  course: m2d,
  user: u1,
  title: "Plongeuse animée en 2D",
  link: "lR7n4zTqgX0",
  thumbnail: "http://www.virtualart.pro/images/rea/ic video/anim2d1.jpg")
p r83
#
r84 = Realisation.create!(
  course: m2d,
  user: u1,
  title: "Animation Star wars en Stickman",
  link: "mMSPp-E-rsY",
  thumbnail: "http://www.virtualart.pro/images/rea/ic video/anim2d2.jpg")
p r84
#
r85 = Realisation.create!(
  course: m2d,
  user: u1,
  title: "Animatique des -Chroniques Yndrawiques-",
  link: "G4888IhW2DE",
  thumbnail: "http://www.virtualart.pro/images/rea/ic video/anim2d3.jpg")
p r85
#
r86 = Realisation.create!(
  course: m2d,
  user: u1,
  title: "Animation de combat de Stickmen",
  link: "",
  thumbnail: "http://www.virtualart.pro/images/rea/ic video/anim2d4.jpg")
p r86
#
r87 = Realisation.create!(
  course: m2d,
  user: u1,
  title: "Animation de combat de Stickmen",
  link: "WxrHrxrELNU",
  thumbnail: "http://www.virtualart.pro/images/rea/ic video/anim2d5.jpg")
p r87
#
r88 = Realisation.create!(
  course: m2d,
  user: u1,
  title: "Petite animation pour la fête des mères",
  link: "bTeRLROCdNw",
  thumbnail: "http://www.virtualart.pro/images/rea/ic video/anim2d6.jpg")
p r88
#
r89 = Realisation.create!(
  course: m2d,
  user: u1,
  title: "Exercice d'animation : fille et balle",
  link: "kumByBFG1vg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic video/anim2d7.jpg")
p r89
#
r90 = Realisation.create!(
  course: m2d,
  user: u1,
  title: "Petit tour en forêt",
  link: "7YJun3zuLi4",
  thumbnail: "http://www.virtualart.pro/images/rea/ic video/anim2d8.jpg")
p r90
#
r91 = Realisation.create!(
  course: m2d,
  user: u1,
  title: "Petit film d'animation coopératif sur l'histoire d'un chat",
  link: "",
  thumbnail: "http://www.virtualart.pro/images/rea/ic video/anim2d9.jpg")
p r91
#
r92 = Realisation.create!(
  course: m2d,
  user: u1,
  title: "Animation stickmen et photos",
  link: "",
  thumbnail: "http://www.virtualart.pro/images/rea/ic video/anim2d10.jpg")
p r92
#
r93 = Realisation.create!(
  course: m2d,
  user: u1,
  title: "Petit poisson rouge 2D",
  link: "FNcKIwuuI1k",
  thumbnail: "http://www.virtualart.pro/images/rea/ic video/anim2d11.jpg")
p r93
#
r94 = Realisation.create!(
  course: m2d,
  user: u1,
  title: "Début d'animation pour chaîne youtube",
  link: "SGP5mBWThdc",
  thumbnail: "http://www.virtualart.pro/images/rea/ic video/anim2d12.jpg")
p r94
#
r95 = Realisation.create!(
  course: m2d,
  user: u1,
  title: "Exercice d'animation 2D et camera avec parallax",
  link: "QBqI4htNqiw",
  thumbnail: "http://www.virtualart.pro/images/rea/ic video/anim2d13.jpg")
p r95
#
#----------------------------------------------------------------------------- MULTIMEDIA 3D
r1 = Realisation.create!(
  course: m3d,
  user: u1,
  title: "Engrenages 3D",
  link: "http://www.virtualart.pro/images/rea/3d/eng.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 3d/eng.jpg")
p r1
#
r2 = Realisation.create!(
  course: m3d,
  user: u2,
  title: "Port de nuit",
  link: "http://www.virtualart.pro/images/rea/3d/port.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 3d/port.jpg")
p r2
#
r3 = Realisation.create!(
  course: m3d,
  user: u2,
  title: "Robot",
  link: "http://www.virtualart.pro/images/rea/3d/crobot1.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 3d/robot1.jpg")
p r3
#
r4 = Realisation.create!(
  course: m3d,
  user: u2,
  title: "Moulin à eau",
  link: "http://www.virtualart.pro/images/rea/3d/moulin3.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 3d/moulin3.jpg")
p r4
#
r5 = Realisation.create!(
  course: m3d,
  user: u2,
  title: "Recherche d'architecture",
  link: "http://www.virtualart.pro/images/rea/3d/archi3d1.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 3d/archi3d1.jpg")
p r5
#
r6 = Realisation.create!(
  course: m3d,
  user: u2,
  title: "architecture d'intérieur",
  link: "http://www.virtualart.pro/images/rea/3d/archi3d2.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 3d/archi3d2.jpg")
p r6
#
r7 = Realisation.create!(
  course: m3d,
  user: u2,
  title: "Chalet",
  link: "http://www.virtualart.pro/images/rea/3d/chalet.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 3d/chalet.jpg")
p r7
#
r8 = Realisation.create!(
  course: m3d,
  user: u2,
  title: "Modélisation de champignon",
  link: "http://www.virtualart.pro/images/rea/3d/champi.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 3d/champi.jpg")
p r8
#
r9 = Realisation.create!(
  course: m3d,
  user: u2,
  title: "Modélisation d'un décor d'amphi pour projet d'animation",
  link: "http://www.virtualart.pro/images/rea/3d/ecole.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 3d/ecole.jpg")
p r9
#
r10 = Realisation.create!(
  course: m3d,
  user: u2,
  title: "Modélisation de fleurs pour la fête des mères",
  link: "http://www.virtualart.pro/images/rea/3d/fleurs1.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 3d/fleurs1.jpg")
p r10
#
r11 = Realisation.create!(
  course: m3d,
  user: u2,
  title: "Halloween",
  link: "http://www.virtualart.pro/images/rea/3d/halloween.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 3d/halloween.jpg")
p r11
#
r12 = Realisation.create!(
  course: m3d,
  user: u2,
  title: "Moulin à vent",
  link: "http://www.virtualart.pro/images/rea/3d/moulin2.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 3d/moulin2.jpg")
p r12
#
r13 = Realisation.create!(
  course: m3d,
  user: u2,
  title: "Carte de Noël",
  link: "http://www.virtualart.pro/images/rea/3d/noel.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 3d/noel.jpg")
p r13
#
r14 = Realisation.create!(
  course: m3d,
  user: u2,
  title: "Oeufs de pâques",
  link: "http://www.virtualart.pro/images/rea/3d/paque.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 3d/paque.jpg")
p r14
#
r15 = Realisation.create!(
  course: m3d,
  user: u2,
  title: "Renard",
  link: "http://www.virtualart.pro/images/rea/3d/renard.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 3d/renard.jpg")
p r15
#
r16 = Realisation.create!(
  course: m3d,
  user: u2,
  title: "Tour",
  link: "http://www.virtualart.pro/images/rea/3d/tour.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 3d/tour.jpg")
p r16
#
r17 = Realisation.create!(
  course: m3d,
  user: u2,
  title: "Modélisation en cours d'arbre",
  link: "http://www.virtualart.pro/images/rea/3d/arbre2.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 3d/arbre2.jpg")
p r17
#
r18 = Realisation.create!(
  course: m3d,
  user: u2,
  title: "Modélisation d'arbres pour jeu vidéo",
  link: "http://www.virtualart.pro/images/rea/3d/arbre1.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 3d/arbre1.jpg")
p r18
#
r19 = Realisation.create!(
  course: m3d,
  user: u2,
  title: "Image de Robot tiré d'une petite animation",
  link: "http://www.virtualart.pro/images/rea/3d/robot.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic 3d/robot.jpg")
p r19
#
r20 = Realisation.create!(
  course: m3d,
  user: u2,
  title: "Renard et tour",
  link: "5q6Fg3R6ACg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic video/anim3d1.jpg")
p r20
#
r21 = Realisation.create!(
  course: m3d,
  user: u2,
  title: "Monstre et petite fille",
  link: "xSeRMVsNPG4",
  thumbnail: "http://www.virtualart.pro/images/rea/ic video/anim3d2.jpg")
p r21
#
r22 = Realisation.create!(
  course: m3d,
  user: u2,
  title: "Interieur de maison 3D en exercice d'architecture",
  link: "SlPYhAjLEeA",
  thumbnail: "http://www.virtualart.pro/images/rea/ic video/anim3d3.jpg")
p r22
#
r23 = Realisation.create!(
  course: m3d,
  user: u2,
  title: "Moulin à eau 3D",
  link: "YnKkQQ7XqzU",
  thumbnail: "http://www.virtualart.pro/images/rea/ic video/anim3d4.jpg")
p r23
#
r24 = Realisation.create!(
  course: m3d,
  user: u2,
  title: "Eolienne en bord de mer 3D",
  link: "SjufAKFCxcc",
  thumbnail: "http://www.virtualart.pro/images/rea/ic video/anim3d5.jpg")
p r24
#
r25 = Realisation.create!(
  course: m3d,
  user: u2,
  title: "Mignon robot 3D, animation de marche et lipsync",
  link: "tET7ITl5RWw",
  thumbnail: "http://www.virtualart.pro/images/rea/ic video/anim3d6.jpg")
p r25
#
r26 = Realisation.create!(
  course: m3d,
  user: u2,
  title: "Salon 3D cell-shading",
  link: "4ezzLj50fxk",
  thumbnail: "http://www.virtualart.pro/images/rea/ic video/anim3d7.jpg")
p r26
#
#----------------------------------------------------------------------------- BD NUMERIQUE
r1 = Realisation.create!(
  course: bd,
  user: u1,
  title: "Histoire Noire, travail de tramage",
  link: "http://www.virtualart.pro/images/rea/bd/bd34.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic bd/bd34.jpg")
p r1
#
r2 = Realisation.create!(
  course: bd,
  user: u1,
  title: "Ellipse, écureuil d'or du festival d'Angoulême 2016",
  link: "http://www.virtualart.pro/images/rea/bd/bd33.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic bd/bd33.jpg")
p r2
#
r3 = Realisation.create!(
  course: bd,
  user: u1,
  title: "Début de BD héroic fantasy",
  link: "http://www.virtualart.pro/images/rea/bd/bd32.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic bd/bd32.jpg")
p r3
#
r4 = Realisation.create!(
  course: bd,
  user: u1,
  title: "Aperçu du processus de travail",
  link: "http://www.virtualart.pro/images/rea/bd/bd31.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic bd/bd31.jpg")
p r4
#
r5 = Realisation.create!(
  course: bd,
  user: u1,
  title: "La fille et le piaf",
  link: "http://www.virtualart.pro/images/rea/bd/bd30.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic bd/bd30.jpg")
p r5
#
r6 = Realisation.create!(
  course: bd,
  user: u1,
  title: "Page 1",
  link: "http://www.virtualart.pro/images/rea/bd/bd29.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic bd/bd29.jpg")
p r6
#
r7 = Realisation.create!(
  course: bd,
  user: u1,
  title: "Carte d'invitation en BD montage photos",
  link: "http://www.virtualart.pro/images/rea/bd/bd28.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic bd/bd28jpg")
p r7
#
r8 = Realisation.create!(
  course: bd,
  user: u1,
  title: "Les Aventures en Ethiopie",
  link: "http://www.virtualart.pro/images/rea/bd/bd27.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic bd/bd27.jpg")
p r8
#
r9 = Realisation.create!(
  course: bd,
  user: u1,
  title: "Détournement du Cri d'Edvard Munch",
  link: "http://www.virtualart.pro/images/rea/bd/bd26.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic bd/bd26.jpg")
p r9
#
r10 = Realisation.create!(
  course: bd,
  user: u1,
  title: "Lemonator",
  link: "http://www.virtualart.pro/images/rea/bd/bd25.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic bd/bd25.jpg")
p r10
#
r11 = Realisation.create!(
  course: bd,
  user: u1,
  title: "La boulangerie en folie, page 1",
  link: "http://www.virtualart.pro/images/rea/bd/bd24.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic bd/bd24.jpg")
p r11
#
r12 = Realisation.create!(
  course: bd,
  user: u1,
  title: "BD pour lecture Web",
  link: "http://www.virtualart.pro/images/rea/bd/bd23.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic bd/bd23.jpg")
p r12
#
r13 = Realisation.create!(
  course: bd,
  user: u1,
  title: "Gernator, page 1",
  link: "http://www.virtualart.pro/images/rea/bd/bd22.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic bd/bd22.jpg")
p r13
#
r14 = Realisation.create!(
  course: bd,
  user: u1,
  title: "Gernator, page 2",
  link: "http://www.virtualart.pro/images/rea/bd/bd21.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic bd/bd21.jpg")
p r14
#
r15 = Realisation.create!(
  course: bd,
  user: u1,
  title: "Gernator, page 3",
  link: "http://www.virtualart.pro/images/rea/bd/bd20.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic bd/bd20.jpg")
p r15
#
r16 = Realisation.create!(
  course: bd,
  user: u1,
  title: "Gernator, page 4",
  link: "http://www.virtualart.pro/images/rea/bd/bd19.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic bd/bd19.jpg")
p r16
#
r17 = Realisation.create!(
  course: bd,
  user: u1,
  title: "Gernator, page 5",
  link: "http://www.virtualart.pro/images/rea/bd/bd18.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic bd/bd18.jpg")
p r17
#
r18 = Realisation.create!(
  course: bd,
  user: u1,
  title: "Gernator, page 6",
  link: "http://www.virtualart.pro/images/rea/bd/bd17.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic bd/bd17.jpg")
p r18
#
r19 = Realisation.create!(
  course: bd,
  user: u1,
  title: "Gernator, page 7",
  link: "http://www.virtualart.pro/images/rea/bd/bd16.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic bd/bd16.jpg")
p r19
#
r20 = Realisation.create!(
  course: bd,
  user: u1,
  title: "Gernator, page 8",
  link: "http://www.virtualart.pro/images/rea/bd/bd15.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic bd/bd15.jpg")
p r20
#
r21 = Realisation.create!(
  course: bd,
  user: u1,
  title: "Le pauvre Lutin",
  link: "http://www.virtualart.pro/images/rea/bd/bd14.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic bd/bd14.jpg")
p r21
#
r22 = Realisation.create!(
  course: bd,
  user: u1,
  title: "BD de SF, page 1",
  link: "http://www.virtualart.pro/images/rea/bd/bd13.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic bd/bd13.jpg")
p r22
#
r23 = Realisation.create!(
  course: bd,
  user: u1,
  title: "L'asticot",
  link: "http://www.virtualart.pro/images/rea/bd/bd12.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic bd/bd12.jpg")
p r23
#
r24 = Realisation.create!(
  course: bd,
  user: u1,
  title: "Les devoirs",
  link: "http://www.virtualart.pro/images/rea/bd/bd11.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic bd/bd11.jpg")
p r24
#
r25 = Realisation.create!(
  course: bd,
  user: u1,
  title: "Petite histoire de résistance durant la guerre, page 1",
  link: "http://www.virtualart.pro/images/rea/bd/bd10.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic bd/bd10.jpg")
p r25
#
r26 = Realisation.create!(
  course: bd,
  user: u1,
  title: "Univers Dragon Ball, page 1",
  link: "http://www.virtualart.pro/images/rea/bd/bd9.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic bd/bd9.jpg")
p r26
#
r27 = Realisation.create!(
  course: bd,
  user: u1,
  title: "La libération de Nyoghta, page 1",
  link: "http://www.virtualart.pro/images/rea/bd/bd8.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic bd/bd8.jpg")
p r27
#
r28 = Realisation.create!(
  course: bd,
  user: u1,
  title: "Univers parallèle, page1",
  link: "http://www.virtualart.pro/images/rea/bd/bd7.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic bd/bd7.jpg")
p r28
#
r29 = Realisation.create!(
  course: bd,
  user: u1,
  title: "BD en marionnette",
  link: "http://www.virtualart.pro/images/rea/bd/bd6.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic bd/bd6.jpg")
p r29
#
r30 = Realisation.create!(
  course: bd,
  user: u1,
  title: "Ebauche de BD SF",
  link: "http://www.virtualart.pro/images/rea/bd/bd5.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic bd/bd5.jpg")
p r30
#
r31 = Realisation.create!(
  course: bd,
  user: u1,
  title: "Les Goopis, page1",
  link: "http://www.virtualart.pro/images/rea/bd/bd4.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic bd/bd4.jpg")
p r31
#
r32 = Realisation.create!(
  course: bd,
  user: u1,
  title: "Les Goopis, page 2",
  link: "http://www.virtualart.pro/images/rea/bd/bd3.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic bd/bd3.jpg")
p r32
#
r33 = Realisation.create!(
  course: bd,
  user: u1,
  title: "BD noir et blanc",
  link: "http://www.virtualart.pro/images/rea/bd/bd2.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic bd/bd2.jpg")
p r33
#
r34 = Realisation.create!(
  course: bd,
  user: u1,
  title: "Une vache en ville",
  link: "http://www.virtualart.pro/images/rea/bd/bd1.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic bd/bd1.jpg")
p r34
#
#----------------------------------------------------------------------------- INFOGRAPHIE PRINT
r1 = Realisation.create!(
  course: pr,
  user: u1,
  title: "Afiche pour l'école La Prairie",
  link: "http://www.virtualart.pro/images/rea/print/affiche.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic print/affiche.jpg")
p r1
#
r2 = Realisation.create!(
  course: pr,
  user: u1,
  title: "Recherche de colorimétrie d'une couverture de livre",
  link: "http://www.virtualart.pro/images/rea/print/couverture1.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic print/couverture1.jpg")
p r2
#
r3 = Realisation.create!(
  course: pr,
  user: u1,
  title: "Couverture de dossier",
  link: "http://www.virtualart.pro/images/rea/print/couverture2.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic print/couverture2.jpg")
p r3
#
r4 = Realisation.create!(
  course: pr,
  user: u1,
  title: "Logo Crep's, restaurant fictif",
  link: "http://www.virtualart.pro/images/rea/print/creps1.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic print/creps1.jpg")
p r4
#
r5 = Realisation.create!(
  course: pr,
  user: u1,
  title: "Flyer Crep's, restaurant fictif",
  link: "http://www.virtualart.pro/images/rea/print/creps2.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic print/creps2.jpg")
p r5
#
r6 = Realisation.create!(
  course: pr,
  user: u1,
  title: "Flyer carte postale pour une agence de voyage fictive",
  link: "http://www.virtualart.pro/images/rea/print/econatur1.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic print/econatur1.jpg")
p r6
#
r7 = Realisation.create!(
  course: pr,
  user: u1,
  title: "Logo de l'agence fictive Econatur'",
  link: "http://www.virtualart.pro/images/rea/print/econatur2.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic print/econatur2.jpg")
p r7
#
r8 = Realisation.create!(
  course: pr,
  user: u1,
  title: "Recherche de Flyer pour concert fictif des Daft Punk",
  link: "http://www.virtualart.pro/images/rea/print/flyer1.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic print/flyer1.jpg")
p r8
#
r9 = Realisation.create!(
  course: pr,
  user: u1,
  title: "Logo, carte de visite et Flyer pour un cabinet de thérapie",
  link: "http://www.virtualart.pro/images/rea/print/flyer2.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic print/flyer2.jpg")
p r9
#
r10 = Realisation.create!(
  course: pr,
  user: u1,
  title: "Flyer pour une exposition",
  link: "http://www.virtualart.pro/images/rea/print/flyer3.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic print/flyer3.jpg")
p r10
#
r11 = Realisation.create!(
  course: pr,
  user: u1,
  title: "Logo pour l'agence fictive Joz",
  link: "http://www.virtualart.pro/images/rea/print/joz1.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic print/joz1.jpg")
p r11
#
r12 = Realisation.create!(
  course: pr,
  user: u1,
  title: "Flyer pour l'agence fictive Joz",
  link: "http://www.virtualart.pro/images/rea/print/joz2.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic print/joz2.jpg")
p r12
#
r13 = Realisation.create!(
  course: pr,
  user: u1,
  title: "Mise en page de livre d'artiste, Jane Darmanthé",
  link: "http://www.virtualart.pro/images/rea/print/livre1.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic print/livre1.jpg")
p r13
#
r14 = Realisation.create!(
  course: pr,
  user: u1,
  title: "Recherche de logo pour un véhicule écologique",
  link: "http://www.virtualart.pro/images/rea/print/logo1.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic print/logo1.jpg")
p r14
#
r15 = Realisation.create!(
  course: pr,
  user: u1,
  title: "Logo pour Luncho, gourmandise fictive",
  link: "http://www.virtualart.pro/images/rea/print/luncho1.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic print/luncho1.jpg")
p r15
#
r16 = Realisation.create!(
  course: pr,
  user: u1,
  title: "Charte graphique de Luncho, gourmandise fictive",
  link: "http://www.virtualart.pro/images/rea/print/luncho2.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic print/luncho2.jpg")
p r16
#
r17 = Realisation.create!(
  course: pr,
  user: u1,
  title: "Création d'une signature/marque d'élève et ses différents supports",
  link: "http://www.virtualart.pro/images/rea/print/print1.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic print/print1.jpg")
p r17
#
r18 = Realisation.create!(
  course: pr,
  user: u1,
  title: "Affiche pour un évènement de bateaux Pop-pop",
  link: "http://www.virtualart.pro/images/rea/print/steamcup.jpg",
  thumbnail: "http://www.virtualart.pro/images/rea/ic print/steamcup.jpg")
p r18
#

# ==================== Stagetype ====================
# === Les créer tous
#
st1 = Stagetype.create!(
  title: "Stage Illustration",
  description: " Vous découvrirez 2 techniques de mise en couleurs de vos dessins!

- Logiciel : Photoshop
- Dessin sur papier ou tablette graphique
- Prise en main de Photoshop
- Techniques de Cel-shading
- Techniques aux pinceaux numérique
- Ajout de textures et motifs",
  picture: "http://www.virtualart.pro/images/interface/ic-stageillu.jpg",
  visible: true,
  color: "153, 255, 153",
  puce: "http://www.virtualart.pro/images/interface/puce-2d.png")
p st1
#
st2 = Stagetype.create!(
  title: "Stage Montage photos",
  description: " Lors de ce stage, vous verrez tout le nécessaire pour rendre vos photos plus belles et aussi les assembler en de toutes nouvelles images !

- Logiciel : Photoshop
- Règles techniques de l’image (DPI, cadrage)
- Découpage et montage (calques, sélection...)
- Suppression des défault
- Corrections (colorimétrie, déformation ...)
- Création d’un matte Painting",
  picture: "http://www.virtualart.pro/images/interface/ic-stagephoto.jpg",
  visible: true,
  color: "81, 178, 99",
  puce: "http://www.virtualart.pro/images/interface/puce-3d.png")
p st2
#
st3 = Stagetype.create!(
  title: "Stage Infographie Print",
  description: " Vous verrez toutes les bases et étapes à suivre pour bien commencer en communication visuelle.

- Logiciel : Photoshop, Illustrator, Indesign
- Ce qu'il faut savoir sur le Print
- Les étapes de réalisations :
Photoshop : préparation d'éléments photos
Illustrator : dessin vectoriel (logo)
InDesign : mise en page
- Création d’une petite plaquette",
  picture: "http://www.virtualart.pro/images/interface/ic-stageprint.jpg",
  visible: true,
  color: "248, 241, 153",
  puce: "http://www.virtualart.pro/images/interface/puce-print.png")
p st3
#
st4 = Stagetype.create!(
  title: "Stage BD Manga",
  description: " Petit condensé des étapes utiles pour bien commencer une BD sur ordinateur !

- Logiciel : Clip Studio
- Recherche du scénario
- Recherche des personnages
- Mise en page
- encrage numérique ou sur tablette lumineuse
- Mise en couleur ou en trames de la planche
- Ajout des bulles et texte sur ordinateur",
  picture: "http://www.virtualart.pro/images/interface/ic-stagebd.jpg",
  visible: true,
  color: "253, 203, 104",
  puce: "http://www.virtualart.pro/images/interface/puce-bd.png")
p st4

#
# ==================== Stage ====================
# === Au moins 1 de chaque type
#

s1 = Stage.create!(
  stagetype: st1,
  timeslot: "jeudi 2 et vendredi 3 novembre 2017",
  visible: true )
p s1
#
s2 = Stage.create!(
  stagetype: st1,
  timeslot: "jeudi 1 et vendredi 2 mars 2018",
  visible: true )
p s2
#
s3 = Stage.create!(
  stagetype: st1,
  timeslot: "jeudi 26 et vendredi 27 avril 2018",
  visible: true )
p s3
#
s4 = Stage.create!(
  stagetype: st1,
  timeslot: "lundi 10 et mardi 11 juillet 2018",
  visible: true )
p s4
#---
s5 = Stage.create!(
  stagetype: st2,
  timeslot: "Samedi 4 et dimanche 5 novembre 2017",
  visible: true )
p s5
#
s6 = Stage.create!(
  stagetype: st2,
  timeslot: "samedi 28 et dimanche 29 avril 2018",
  visible: true )
p s6
#
s7 = Stage.create!(
  stagetype: st2,
  timeslot: "samedi 12 et dimanche 13 juillet 2018",
  visible: true )
p s7
#---
s8 = Stage.create!(
  stagetype: st3,
  timeslot: "samedi 6 et dimanche 7 janvier 2018",
  visible: true )
p s8
#
s9 = Stage.create!(
  stagetype: st3,
  timeslot: "samedi 3 et dimanche 4 mars 2018",
  visible: true )
p s9
#
s10 = Stage.create!(
  stagetype: st3,
  timeslot: "vendredi 14 et samedi 15 juillet 2018",
  visible: true )
p s10
#---
s11 = Stage.create!(
  stagetype: st4,
  timeslot: "mardi 31 oct. et mercredi 1 nov. 2017",
  visible: true )
p s11
#
s12 = Stage.create!(
  stagetype: st4,
  timeslot: "mardi 27 et mercredi 28 février 2018",
  visible: true )
p s12
#
s13 = Stage.create!(
  stagetype: st4,
  timeslot: "mardi 24 et mercredi 25 avril 2018",
  visible: true )
p s13
#
s14 = Stage.create!(
  stagetype: st4,
  timeslot: "mercredi 11 et jeudi 12 juillet 2018",
  visible: true )
p s14
#
# ==================== UsersStage ====================
# === On en crée 1 seul pour tester
#
us1 = UsersStage.create!(
  user: u1,
  stage: s1,
  confirmed: false)
p us1
#
# ==================== Timeslot ====================
# === Cela pourra changer, en mettre quelques-uns
#
t1 = Timeslot.create!(
  title: "Mercredi 13h30 - 15h00",
  visible: true)
p t1
#
t2 = Timeslot.create!(
  title: "Mercredi 15h00 - 16h30",
  visible: true)
p t2
#
t3 = Timeslot.create!(
  title: "Mercredi 16h30 - 18h00",
  visible: true)
p t3
#
t4 = Timeslot.create!(
  title: "Mercredi 18h00 - 19h30",
  visible: true)
p t4
#
t5 = Timeslot.create!(
  title: "Vendredi 18h00 - 19h30",
  visible: true)
p t5
#
t6 = Timeslot.create!(
  title: "Samedi 13h30 - 15h00",
  visible: true)
p t6
#
t7 = Timeslot.create!(
  title: "Samedi 15h00 - 16h30",
  visible: true)
p t7
#
t8 = Timeslot.create!(
  title: "Samedi 16h30 - 18h00",
  visible: true)
p t8
#
t9 = Timeslot.create!(
  title: "Accéder aux vidéos uniquement.",
  visible: true)
p t9
#
t10 = Timeslot.create!(
  title: "Prendre des cours particuliers à distance.",
  visible: false)
p t10
#
# ==================== UsersCourse ====================
# === On en crée 1 seul pour tester
#
uc1 = UsersCourse.create!(
  user: u1,
  course: m2d,
  timeslot: t1,
  confirmed: true)
p uc1
#
# ==================== Block ====================
# === Créer tous les blocs sachant qu'il y a des champs facultatifs
#
# --- PAGE ACCUEIL
carousel1 = Block.create!(
  tag: "carousel1",
  title: "Carousel",
  description: "",
  picture: "http://www.virtualart.pro/images/interface/carousel1.jpg",
  link: "active",
  visible: true,
  footer: false)
p carousel1
#
carousel2 = Block.create!(
  tag: "carousel2",
  title: "Carousel",
  description: "",
  picture: "http://i.imgur.com/gXQCx4d.jpg",
  link: "",
  visible: true,
  footer: false)
p carousel2
#
carousel3 = Block.create!(
  tag: "carousel3",
  title: "Carousel",
  description: "",
  picture: "http://www.virtualart.pro/images/interface/carousel2.jpg",
  link: "",
  visible: true,
  footer: false)
p carousel3
#
carousel4 = Block.create!(
  tag: "carousel4",
  title: "Carousel",
  description: "",
  picture: "http://www.virtualart.pro/images/interface/carousel4.jpg",
  link: "",
  visible: true,
  footer: false)
p carousel4
#
carousel5 = Block.create!(
  tag: "carousel5",
  title: "Carousel",
  description: "",
  picture: "http://www.virtualart.pro/images/interface/carousel5.jpg",
  link: "",
  visible: true,
  footer: false)
p carousel5
#
carousel6 = Block.create!(
  tag: "carousel6",
  title: "Carousel",
  description: "",
  picture: "http://i.imgur.com/kfZEM3X.png",
  link: "",
  visible: true,
  footer: false)
p carousel6
#
accueil_logiciels = Block.create!(
  tag: "accueil_logiciels",
  title: "Plongez avec nous dans le monde de l'image numérique !",
  description: "Vous souhaitez mettre en image vos univers ? Que ce soit pour le loisir ou parce que vous vous destinez aux métiers de l'infographie, nous sommes là pour vous enseigner ces techniques ! Apprenez à créer des illustrations, des BDs, des animation 2D et 3D, ou encore des logos et flyers, avec des logiciels pro comme Photoshop, Maya et d'autres encore :",
  picture: "",
  link: "",
  visible: true,
  footer: false)
p accueil_logiciels
#
accueil_video = Block.create!(
  tag: "accueil_video",
  title: "Un enseignement 2.0",
  description: "L'enseignement aussi est 2.0 ! Vous aurez accès à tous les cours en vidéos sur notre site et pendant les séances nous feront des applications ou vos projets, en avançant à votre rythme.",
  picture: "",
  link: "57Q6swND1ic",
  visible: true,
  footer: false)
p accueil_video
#
accueil_espace = Block.create!(
  tag: "accueil_espace",
  title: "Un espace convivial",
  description: "Nous vous accueillons dans un atelier extra scolaire dans le coeur de Toulouse à 2 pas du métro Jean Jaurès. Tout humanoïde entre 8 et 888ans peut venir apprendre les arcanes de l'infographie et donner vie à son imagination !",
  picture: "http://www.virtualart.pro/images/interface/local.jpg",
  link: "",
  visible: true,
  footer: false)
p accueil_espace
#
accueil_materiel = Block.create!(
  tag: "accueil_materiel",
  title: "Sur place, nous sommes équipés d'un matériel pro :",
  description: "Vous aurez à votre disposition des PCs et logiciels, avec des tablettes graphiques de gamme professionnelle, un scanner A3 pour ceux qui voient grand, plusieurs tablettes lumineuses, un micro pour les bruitages de vos films, et un fond vert. Pour les croquis préparatoires sur papier, le matériel de dessin se trouve également sur place.",
  picture: "http://www.virtualart.pro/images/interface/materiels.png",
  link: "",
  visible: true,
  footer: false)
p accueil_materiel
#
news = Block.create!(
  tag: "news",
  title: "News",
  description: "Les inscriptions sont ouvertes ! Les cours reprennent la semaine du 25 septembre, n'hésitez pas à m'appeler pour toutes questions :)",
  picture: "", # Pas besoin d'image dans les news
  link: "", # Pas besoin de lien non plus
  visible: true,
  footer: false)
p news
#
post = Block.create!(
  tag: "post",
  title: "Dernière réalisation",
  description: "Montage 2D réalisé par mes soins, pour illustrer les techniques du cursus Multimédia 2D.",
  picture: "http://www.virtualart.pro/images/divers/inu.jpg",
  link: "http://www.virtualart.pro/images/divers/inu.jpg",
  visible: true,
  footer: false)
p post
#
coeur = Block.create!(
  tag:"coeur",
  title:"Coup de coeur", # Il faudra réfléchir à l'organisation de la page d'accueil >> NE PAS METTRE
  description: "",
  picture: "",
  link: "m7nfQzZuePc",
  visible: true,
  footer: false)
p coeur
#
livredor = Block.create!(
  tag: "livredor",
  title: "Livre d’Or",
  description: "Venez commenter :)",
  picture: "http://www.magicskullgames.com/wp-content/uploads/2012/12/FCI-spots-2-Spell-book-fancy-open-colorized.png",
  link: "",
  visible: false, # Invisible pour l'instant : à développer plus tard.
  footer: false)
p livredor
#
# --- PAGE CONTACT
lieu = Block.create!(
  tag: "lieu",
  title: "Lieu",
  description: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2888.975507931656!2d1.4466251153027123!3d43.607051563431874!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12aebc98d76ab2fb%3A0x41b1a06b33777d2d!2sAtelier+Virtual+Art!5e0!3m2!1sfr!2sfr!4v1502106928893',
  picture: "http://www.virtualart.pro/images/interface/local.jpg",
  link: "https://www.google.fr/maps/place/Atelier+Virtual+Art/@43.6070516,1.4466251,17z/data=!3m1!4b1!4m5!3m4!1s0x12aebc98d76ab2fb:0x41b1a06b33777d2d!8m2!3d43.6070477!4d1.4488138",
  visible: true,
  footer: false)
p lieu
#
coo = Block.create!(
  tag: "coo",
  title: "Coordonnées",
  description: "8 rue Dalayrac
  31000 Toulouse
  métro Jean Jaurès

  contact@virtualart.pro
  06.74.75.30.23
  09.54.11.14.31", # Passer à la ligne normalement
  picture: "",
  link: "",
  visible: true,
  footer: false)
p coo
#
ouverture = Block.create!(
  tag: "ouverture",
  title: "Horaires d'ouverture",
  description: "L’atelier est ouvert selon les inscriptions aux cours.

Une permanence est assurée les mercredis et samedis de 13h30 à 19h30 hors vacances scolaire. Nous sommes joignables par téléphone tous les jours.",
  picture: "",
  link: "",
  visible: true,
  footer: false)
p ouverture
#
# --- PAGE COURS
inscription_cours = Block.create!(
  tag: "inscription_cours",
  title: "Inscription Cours",
  description: "Vous souhaitez vous inscrire à un cours ? Accédez ici au formulaire.",
  link: "",
  visible: true,
  footer: false)
p inscription_cours
#
planning = Block.create!(
  tag: "planning",
  title: "Planning des cours",
  description: "Choisissez un de ces créneaux, au choix !

  Mercredi :
  / 13h30 - 15h / 15h - 16h30 /
  / 16h30 - 18h / 18h - 19h30 /

  Vendredi :
  / 18h - 19h30 /

  Samedi :
  / 13h30 - 15h / 15h - 16h30 /
  / 16h30 - 18h /",
  picture: "",
  link: "",
  visible: true,
  footer: false)
p planning
#
tarifs1 = Block.create!(
  tag: "tarifs1",
  title: "Mes cours à l'atelier",
  description: "VIDEOS + SEANCES 1H30
  PAR SEMAINE :",
  picture: "http://www.virtualart.pro/images/interface/prixseances.png",
  link: "",
  visible: true,
  footer: false)
p tarifs1
#
tarifs2 = Block.create!(
  tag: "tarifs2",
  title: "Accéder uniquement aux vidéos",
  description: "Si vous n'êtes pas sur Toulouse ou si vous préférez vous former à domicile, cette solution est pour vous : consultez toutes les vidéos du programme choisi pendant le nombre de mois que vous souhaitez.",
  picture: "http://www.virtualart.pro/images/interface/prixvideos.png",
  link: "",
  visible: true,
  footer: false)
p tarifs2
#
# --- PAGE PROFIL
profil = Block.create!(
  tag:"profil",
  title:"Qui suis-je ?", # faire un blox texte + image a chaque fois x4
  description:"Mon parcours et mes projets...",
  picture:"http://www.virtualart.pro/images/interface/profil3.jpg",
  link: "",
  visible: true,
  footer: false)
p profil
#
prof1 = Block.create!(
  tag:"prof1",
  title:"Professeur", # faire un blox texte + image a chaque fois x4
  description:"Estelle BOUSSOT",
  picture:"http://www.virtualart.pro/images/interface/profil1.jpg",
  link: "",
  visible: true,
  footer: false)
p prof1
#
prof2 = Block.create!(
  tag:"prof2",
  title:"",
  description:"Passionnée par le dessin, j'ai intégré après le baccalauréat L'Institut Supérieur des Arts Appliqués (LISAA) à Paris, dont j'ai été diplômée en animation 2D avec mention. Puis, pour compléter mes connaissances, j'ai poursuivi mes études aux Arts et Technologies de l'Image (ATI) où j'ai appris la 3D et les bases de la programmation.",
  picture:"http://www.virtualart.pro/images/interface/profil2.jpg",
  link: "",
  visible: true,
  footer: false)
p prof2
#
prof3 = Block.create!(
  tag:"prof3",
  title:"",
  description:"Après avoir travaillé dans une agence de communication, puis en freelance, j'ai découvert l’enseignement en animant des ateliers de bandes dessinées et de flip book en école primaire puis en école d’art appliqué.",
  picture:"http://www.virtualart.pro/images/interface/profil3.jpg",
  link: "",
  visible: true,
  footer: false)
p prof3
#
prof4 = Block.create!(
  tag:"prof4",
  title:"",
  description:"J’ai naturellement voulu continuer dans cette voie en créant Virtual Art. Je vous propose, sous forme de cours extra-scolaires et de stages, des formations sur les logiciels d’infographie et un accompagnement dans la mise en place de projets personnels. L’art et l’infographie sont pour moi étroitement liés : le choix du média étant au service d’une idée, et non l’inverse. ",
  picture:"http://www.virtualart.pro/images/interface/profil4.jpg",
  link: "",
  visible: true,
  footer: false)
p prof4
#
parcours = Block.create!(
  tag: "parcours",
  title: "Parcours",
  description: "Création de Virtual Art en 2011 jusqu’à nos jours

Enseignante à Ynov de 2014 à 2017

Travail en Freelance 2010-2011

Travail de graphiste 2D, 3D à Communicas 2008-2010

Master 3D à ATI de 2006 à 2009

Diplôme en Animation 2D à LISAA de 2003 à 2006",
  picture: "",
  link: "",
  visible: true,
  footer: false)
p parcours
#
travail = Block.create!(
  tag:"travail",
  title:"Mon travail",
  description:"Consulter mes travaux :
  http://boussotestelle.free.fr/",
  picture:"", # pas d'image
  link: "http://boussotestelle.free.fr/",
  visible: true,
  footer: false)
p travail
#
# --- PAGE REALISATION
propos = Block.create!(
  tag:"propos",
  title:"A propos",
  description:"Pour vous donner une idée, voici une séléction des travaux d’élèves réalisés pendants les cours ou les stages. L’âge et le niveaux des élèves est mélangé.",
  picture:"", # pas d'image
  link: "",
  visible: true,
  footer: false)
p propos
#
# --- PAGE STAGES
inscription_stage = Block.create!(
  tag: "inscription_stage",
  title: "Inscription Stages",
  description: "Vous souhaitez vous inscrire à un stage ? Accédez ici au formulaire.",
  picture:"", # pas d'image
  link: "",
  visible: true,
  footer: false)
p inscription_stage
#
infos = Block.create!(
  tag:"infos",
  title:"Infos pratiques stages",
  description:"Horaires :
10h - 12h30 à 13h30 - 17h

Tarifs :
150€ les 2 jours /12h

Matériel fourni, amenez une clé USB pour récupérer vos travaux.

Le repas se prend en général à l’extérieur, mais nous mettons à votre disposition un petit frigo et un micro-onde si besoin.
",
  picture:"", # pas d'image
  link: "",
  visible: true,
  footer: false)
p infos
#
# --- FOOTER
deviantart = Block.create!(
  tag:"deviantart",
  title:"Mon Deviant Art",
  description:"Consulter mes travaux ...",
  picture:"http....jpg",
  link: "",
  visible: false,
  footer: true)
p deviantart
#
webtoon = Block.create!(
  tag:"webtoon",
  title:"Mes Webtoons",
  description:"",
  picture:"http....jpg",
  link: "",
  visible: false, # Pour l'instant on ne l'affiche pas
  footer: false)
p webtoon
#
twitter = Block.create!(
  tag: "twitter",
  title: "Mon fil Twitter",
  description: "",
  picture: "http://www.iconsdb.com/icons/preview/silver/twitter-xxl.png",
  link: "https://twitter.com/LydieArt31",
  visible: true,
  footer: true)
p twitter
#
facebook = Block.create!(
  tag: "facebook",
  title: "Ma page facebook",
  description: "",
  picture:"http://www.iconsdb.com/icons/preview/silver/facebook-3-xxl.png",
  link: "https://www.facebook.com/Virtual-Art-199584596815296",
  visible: true,
  footer: true)
p facebook
#
youtube = Block.create!(
  tag: "youtube",
  title: "Ma chaîne Youtube",
  description: "",
  picture:"http://www.montelvini.it/wp-content/uploads/revslider/home-FS/youtube-grigio.png",
  link: "https://www.youtube.com/user/VirtualArtToulouse",
  visible: true,
  footer: true)
p youtube
#
instagram = Block.create!(
  tag: "instagram",
  title: "Mon Instagram",
  description: "",
  picture:"http....jpg",
  link: "",
  visible: false,
  footer: true)
p instagram
#
#copyright en dur
copyright = Block.create!(
  tag: "copyright",
  title: "© Copyright SARL Virtual Art 2017 - Mentions légales.",
  description: "1. Identification

Ce site est la propriété de la SARL Virtual Art RCS TOULOUSE 534 459 607, éditeur du site, située au :
8, rue Dalayrac
31000 TOULOUSE
Tél. : 0954111431


2. Hébergement du site

Ce site est hébergé auprès de la société :
OVH SAS
2 rue Kellermann - 59100 Roubaix - France


3. Données personnelles

La SARL Virtual Art ne collecte aucune information personnelle autres que celles que vous lui communiquez, et ces dernières le sont uniquement à des fins de gestion de vos demandes et de statistiques internes à l'atelier. Ces informations ne sont en aucun cas cédées à des tiers.

Conformément à la loi \"Informatique et Libertés\" (art. 34) vous disposez d'un droit d'accès, de modification, de rectification et de suppression des données qui vous concernent. Pour cela il vous suffit d'écrire à contact@virtualart.pro.

4. Responsabilités

Les liens hypertextes mis en place dans ce site web en direction d'autres sites présents sur le réseau Internet ou les liens provenant d'autres sites du réseau Internet vers ce site, ne sauraient engager la responsabilité de la SARL Virtual Art. Vous avez la possibilité de mettre en place un lien hypertexte entre votre site et celui-ci.

5. Propriété intellectuelle

La reproduction et/ou diffusion des textes, des visuels d'illustration, animés ou non, des sons et éléments multimédia, des documents téléchargeables, des représentations iconographiques et photographiques, et, plus généralement, de tout élément original - au sens du Code de la propriété intellectuelle - du site internet virtualart.pro, ainsi que du site en lui-même, sont strictement soumis à l'autorisation préalable et expresse de l'éditeur du site.
Les images et les textes du site ne sont en aucun cas contractuels.",
  picture: "",
  link: "http://virtualart.pro/pages/mentions.html",
  visible: true,
  footer: false)
p copyright
#
form = Block.create!(
  tag: "form",
  title: "Infos formulaire",
  description: "Pour vous inscrire à mes cours ou à mes stages, complétez cette fiche de renseignements, je vous contacterai alors pour confirmer votre inscription, à bientôt !",
  picture: "http://www.virtualart.pro/images/interface/bulle.jpg",
  link: "",
  visible: true,
  footer: false)
p form
#
logo_xs = Block.create!(
  tag: "logo_xs",
  title: "",
  description: "",
  picture: "http://www.virtualart.pro/images/interface/burger.jpg",
  link: "",
  visible: true,
  footer: false)
p logo_xs
#
# ==================== CoursesSoftware ====================
# === On en crée 1 seul pour tester
#
m2dph = CoursesSoftware.create!(
  course: m2d,
  software: ph)
p m2dph
#
m2dmo = CoursesSoftware.create!(
  course: m2d,
  software: mo)
p m2dmo
#
m2ae = CoursesSoftware.create!(
  course: m2d,
  software: ae)
p m2ae
#
m2gra = CoursesSoftware.create!(
  course: m2d,
  software: gra)
p m2gra
#
m3dma = CoursesSoftware.create!(
  course: m3d,
  software: ma)
p m3dma
#
m3dmu = CoursesSoftware.create!(
  course: m3d,
  software: mu)
p m3dmu
#
m3dph = CoursesSoftware.create!(
  course: m3d,
  software: ph)
p m3dph
#
m3dae = CoursesSoftware.create!(
  course: m3d,
  software: ae)
p m3dae
#
m3dgra = CoursesSoftware.create!(
  course: m3d,
  software: gra)
p m3dgra
#
bdcsp = CoursesSoftware.create!(
  course: bd,
  software: csp)
p bdcsp
#
bdph = CoursesSoftware.create!(
  course: bd,
  software: ph)
p bdph
#
bdgra = CoursesSoftware.create!(
  course: bd,
  software: gra)
p bdgra
#
prph = CoursesSoftware.create!(
  course: pr,
  software: ph)
p prph
#
prai = CoursesSoftware.create!(
  course: pr,
  software: ai)
p prai
#
prind = CoursesSoftware.create!(
  course: pr,
  software: ind)
p prind
#
prgra = CoursesSoftware.create!(
  course: pr,
  software: gra)
p prgra
