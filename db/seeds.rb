# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
TimeSlot.destroy_all
SportClass.destroy_all
User.destroy_all

# =======
# Coaches
# =======

mike_coach = User.create!(
  first_name: "Mike",
  last_name: "Horn",
  email: "mike@gmail.com",
  password: "password"
)

john_coach = User.create!(
  first_name: "John",
  last_name: "John",
  email: "john@gmail.com",
  password: "password"
)

victoire_coach = User.create!(
  first_name: "Victoire",
  last_name: "Dassier",
  email: "victoire@gmail.com",
  password: "password"
)


# =======
# Clients
# =======

alex_client = User.create!(
  first_name: "Alex",
  last_name: "Larbalet",
  email: "alex@gmail.com",
  telephone: "0654789439",
  birth_date: "21/09/1992",
  password: "password",
  avatar_url: "https://media-exp1.licdn.com/dms/image/C4E03AQHiidN7aozEYg/profile-displayphoto-shrink_800_800/0/1607246202881?e=1643846400&v=beta&t=pWBxZpd1RyLBN95LVJ8k_SRh-dkapJIP87bPSegRtkk"
)

henri_client = User.create!(
  first_name: "Henri",
  last_name: "IV",
  email: "henri@gmail.com",
  telephone: "0654712922",
  birth_date: "25/07/1987",
  password: "password",
  avatar_url: "https://media-exp1.licdn.com/dms/image/C4D03AQEp1wwPqSJanA/profile-displayphoto-shrink_800_800/0/1627912225585?e=1643846400&v=beta&t=IP9O8RpXhpZZs4NdFBCzewSkXO96Tdqm9izYCSSf_Xo"
)

miguel_client = User.create!(
  first_name: "Miguel",
  last_name: "Sanchez",
  email: "miguel@gmail.com",
  telephone: "0605284294",
  birth_date: "12/02/1972",
  password: "password",
  avatar_url: "https://media-exp1.licdn.com/dms/image/C4D03AQG2lE0E-Fw0uA/profile-displayphoto-shrink_800_800/0/1517276105494?e=1643846400&v=beta&t=ZiZ_lrs29-IPzw-EgG7tKNhChjhpMs7FrfySG8oTsKw"
)

dinah_client = User.create!(
  first_name: "Dinah",
  last_name: "Miaou",
  email: "dinah@gmail.com",
  telephone: "0614973696",
  birth_date: "11/11/1998",
  password: "password",
  avatar_url: "https://media-exp1.licdn.com/dms/image/C5603AQGdYw0ic74EMw/profile-displayphoto-shrink_800_800/0/1597388485505?e=1643846400&v=beta&t=57GXTuWOnkcCFGljVG6JZFNc4yppM3wSbOhr6I_AKnQ"
)

holly_client = User.create!(
  first_name: "Holly",
  last_name: "Bellemare",
  email: "holly@gmail.com",
  telephone: "0619539427",
  birth_date: "06/08/1992",
  password: "password",
  avatar_url: "https://media-exp1.licdn.com/dms/image/C4E03AQHv2heiteY-AQ/profile-displayphoto-shrink_800_800/0/1624365353574?e=1643846400&v=beta&t=B4tYrT0jV9k5gqTYPIsZA1KvquJdluNuEzvyrMOLjtQ"
)

arthur_client = User.create!(
  first_name: "Arthur",
  last_name: "Laforêt",
  email: "arthur@gmail.com",
  telephone: "0618397318",
  birth_date: "14/06/1956",
  password: "password",
  avatar_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1634544990/d03g2y8psdzvpnudflhn.jpg"
)

cecile_client = User.create!(
  first_name: "Cécile",
  last_name: "Chevalier",
  email: "cecile@gmail.com",
  telephone: "0695297467",
  birth_date: "23/04/1990",
  password: "password",
  avatar_url: "https://media-exp1.licdn.com/dms/image/C4E03AQEktqbJjaQYUA/profile-displayphoto-shrink_400_400/0/1635953208819?e=1643846400&v=beta&t=tHiJhbhPXUETPsDep0a2uCb7L561qxzlUGlgBLrDBIc"
)

jeanro_client = User.create!(
  first_name: "Jeanro",
  last_name: "Croissant",
  email: "jeanro@gmail.com",
  telephone: "0639751974",
  birth_date: "18/12/1994",
  password: "password",
  avatar_url:"https://avatars.githubusercontent.com/u/26276590?v=4"
)

puts "#{User.count} users were created"

# ================
# Cours coach Mike
# ================

yoga_mike = SportClass.create!(
  category: "Yoga",
  name: "Air yoga",
  description: "Yoga dans les rideaux pour un niveau intermédiaire",
  level: "Intermédiaire",
  group_size: 10,
  price: 20,
  duration: 120,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  coach: mike_coach
)

meditation_mike = SportClass.create!(
  category: "Méditation",
  name: "Méditation en plein air",
  description: "Venez vous ressourcer au milieu de la nature, accompagné du chant des oiseaux. Tout le monde il est beau, tout le monde il est gentil",
  level: "Tous niveaux",
  group_size: 5,
  price: 30,
  duration: 60,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  coach: mike_coach
)

# ================
# Cours coach John
# ================

pilates_john = SportClass.create!(
  category: "Pilates",
  name: "Initiation au pilates",
  description: "Cours de découverte du pilates pour débutant",
  level: "Débutant",
  group_size: 3,
  price: 20,
  duration: 90,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  coach: john_coach
)

crossfit_john = SportClass.create!(
  category: "Crossfit",
  name: "Crossfit intensif",
  description: "Cours individuel de crossfit pour expert. Musculature squelettique s'abstenir...",
  level: "Expert",
  group_size: 1,
  price: 20,
  duration: 120,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  coach: john_coach
)

# ====================
# Cours coach Victoire
# ====================

fitness_victoire = SportClass.create!(
  category: "Fitness",
  name: "Gym suédoise",
  description: "Abdos, épaules, bras, dos, cuisses, mollets… Les différents exercices proposés dans les cours de gym suédoise font travailler l'ensemble du corps grâce à des mouvements simples, mais toujours très toniques.",
  level: "Intermédiaire",
  group_size: 10,
  price: 20,
  duration: 60,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  coach: victoire_coach
)

pilates_victoire = SportClass.create!(
  category: "Pilates",
  name: "Pilates sur reformer",
  description: "Initiation au pilates",
  level: "Débutant",
  group_size: 2,
  price: 35,
  duration: 60,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  coach: victoire_coach
)

fitness_victoire = SportClass.create!(
  category: "Fitness",
  name: "Steps",
  description: "Venez bouger au rythme de la musique. Renforcement du bas du corps et travail du cardio. Prévoir serviette et eau.",
  level: "Tous niveaux",
  group_size: 10,
  price: 20,
  duration: 60,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  coach: victoire_coach
)

musculation_victoire = SportClass.create!(
  category: "Musculation",
  name: "Séance de coaching",
  description: "Coaching personnalisé: Renforcement musculaire, perte de poids, cardio, remise en forme, réeducation etc.",
  level: "Tous niveaux",
  group_size: 1,
  price: 60,
  duration: 45,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  coach: victoire_coach
)

yoga_victoire = SportClass.create!(
  category: "Yoga",
  name: "Hatha Yoga",
  description: "C’est un yoga doux dont chaque posture doit normalement être adaptée au niveau de chacun. Il n’existe ainsi aucune contre-indication particulière. Le hatha yoga peut se pratiquer à tout âge. Il est même conseillé aux personnes qui n’aiment pas le sport puisqu’il est davantage une méthode de relaxation et de bien-être.",
  level: "Tous niveaux",
  group_size: 10,
  price: 20,
  duration: 60,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  coach: victoire_coach
)

yoga_victoire = SportClass.create!(
  category: "Yoga",
  name: "Yoga découverte",
  description: "Le yoga permet d'acquérir et de développer la souplesse musculaire des membres inférieurs et supérieurs.",
  level: "Débutant",
  group_size: 15,
  price: 15,
  duration: 60,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  coach: victoire_coach
)

puts "#{SportClass.count} sport classes were created"

# ==================
# Créneaux Yoga Mike
# ==================

creneau_yoga_mike_1 = TimeSlot.create!(
  name: "Air Yoga",
  description: "Yoga dans les rideaux pour un niveau intermédiaire",
  level: "Intermédiaire",
  group_size: 5,
  price: 20,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("29/11/2021 8:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("29/11/2021 9:30", "%d/%m/%Y %H:%M"),
  sport_class: yoga_mike
)

creneau_yoga_mike_2 = TimeSlot.create!(
  name: "Air Yoga",
  description: "Yoga dans les rideaux pour un niveau intermédiaire",
  level: "Intermédiaire",
  group_size: 5,
  price: 20,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("30/11/2021 10:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("30/11/2021 12:00", "%d/%m/%Y %H:%M"),
  sport_class: yoga_mike
)
creneau_yoga_mike_3 = TimeSlot.create!(
  name: "Alta Yoga",
  description: "Yogi Yogi",
  level: "Débutant",
  group_size: 1,
  price: 60,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("29/11/2021 14:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("29/11/2021 15:00", "%d/%m/%Y %H:%M"),
  sport_class: yoga_mike
)

creneau_yoga_mike_4 = TimeSlot.create!(
  name: "Air Yoga",
  description: "Yoga dans les rideaux pour un niveau intermédiaire",
  level: "Intermédiaire",
  group_size: 5,
  price: 20,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("01/12/2021 16:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("01/12/2021 18:45", "%d/%m/%Y %H:%M"),
  sport_class: yoga_mike
)

# ========================
# Créneaux Meditation Mike
# ========================

creneau_meditation_mike_1 = TimeSlot.create!(
  name: "Méditation en plein air",
  description: "Venez vous ressourcer au milieu de la nature, accompagné du chant des oiseaux. Tout le monde il est beau, tout le monde il est gentil",
  level: "Tous niveaux",
  group_size: 10,
  price: 20,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("29/11/2021 16:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("29/11/2021 18:00", "%d/%m/%Y %H:%M"),
  sport_class: meditation_mike
)

creneau_meditation_mike_2 = TimeSlot.create!(
  name: "Méditation en plein air",
  description: "Venez vous ressourcer au milieu de la nature, accompagné du chant des oiseaux. Tout le monde il est beau, tout le monde il est gentil",
  level: "Tous niveaux",
  group_size: 10,
  price: 20,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("26/11/2021 15:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("26/11/2021 17:00", "%d/%m/%Y %H:%M"),
  sport_class: meditation_mike
)

# =====================
# Créneaux Pilates John
# =====================

creneau_pilates_john_1 = TimeSlot.create!(
  name: "Initiation au pilates",
  description: "Pilates sur reformer",
  level: "Débutant",
  group_size: 3,
  price: 20,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("22/11/2021 15:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("22/11/2021 17:00", "%d/%m/%Y %H:%M"),
  sport_class: pilates_john
)

creneau_pilates_john_2 = TimeSlot.create!(
  name: "Pilates niveau avancé",
  description: "Pour aller plus loin dans le pilates",
  level: "Expert",
  group_size: 5,
  price: 30,
  address1: "15 rue Crillon",
  address2: "",
  post_code: "69006",
  town: "Lyon",
  start_at: DateTime.strptime("26/11/2021 15:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("26/11/2021 17:00", "%d/%m/%Y %H:%M"),
  sport_class: pilates_john
)

# ======================
# Créneaux Crossfit John
# ======================

creneau_crossfit_john_1 = TimeSlot.create!(
  name: "Crossfit intensif",
  description: "Cours individuel de crossfit pour expert. Musculature squelettique s'abstenir...",
  level: "Expert",
  group_size: 1,
  price: 50,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("23/11/2021 12:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("23/11/2021 13:00", "%d/%m/%Y %H:%M"),
  sport_class: crossfit_john
)

creneau_crossfit_john_2 = TimeSlot.create!(
  name: "Crossfit intensif",
  description: "Cours d'initiation au crossfit en petit groupe",
  level: "Débutant",
  group_size: 5,
  price: 40,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("27/11/2021 15:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("27/11/2021 16:30", "%d/%m/%Y %H:%M"),
  sport_class: crossfit_john
)

# =========================
# Créneaux Fitness Victoire
# =========================

creneau_fitness_victoire_1 = TimeSlot.create!(
  name: "Séance de coaching",
  description: "Coaching personnalisé: Renforcement musculaire, perte de poids, cardio, remise en forme, réeducation etc.",
  level: "Tous niveaux",
  group_size: 1,
  price: 60,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("03/12/2021 08:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("03/12/2021 08:45", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)

creneau_fitness_victoire_1 = TimeSlot.create!(
  name: "Séance de coaching",
  description: "Coaching personnalisé: Renforcement musculaire, perte de poids, cardio, remise en forme, réeducation etc.",
  level: "Tous niveaux",
  group_size: 1,
  price: 60,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("02/12/2021 08:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("02/12/2021 08:45", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)

creneau_fitness_victoire_1 = TimeSlot.create!(
  name: "Séance de coaching",
  description: "Coaching personnalisé: Renforcement musculaire, perte de poids, cardio, remise en forme, réeducation etc.",
  level: "Tous niveaux",
  group_size: 1,
  price: 60,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("01/12/2021 08:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("01/12/2021 08:45", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)
creneau_fitness_victoire_1 = TimeSlot.create!(
  name: "Séance de coaching",
  description: "Coaching personnalisé: Renforcement musculaire, perte de poids, cardio, remise en forme, réeducation etc.",
  level: "Tous niveaux",
  group_size: 1,
  price: 60,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("30/11/2021 08:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("30/11/2021 08:45", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)

creneau_fitness_victoire_1 = TimeSlot.create!(
  name: "Séance de coaching",
  description: "Coaching personnalisé: Renforcement musculaire, perte de poids, cardio, remise en forme, réeducation etc.",
  level: "Tous niveaux",
  group_size: 1,
  price: 60,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("29/11/2021 08:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("29/11/2021 08:45", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)
creneau_fitness_victoire_1 = TimeSlot.create!(
  name: "Séance de coaching",
  description: "Coaching personnalisé: Renforcement musculaire, perte de poids, cardio, remise en forme, réeducation etc.",
  level: "Tous niveaux",
  group_size: 1,
  price: 60,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("29/11/2021 13:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("29/11/2021 13:45", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)
creneau_fitness_victoire_1 = TimeSlot.create!(
  name: "Séance de coaching",
  description: "Coaching personnalisé: Renforcement musculaire, perte de poids, cardio, remise en forme, réeducation etc.",
  level: "Tous niveaux",
  group_size: 1,
  price: 60,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("30/11/2021 13:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("30/11/2021 13:45", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)
creneau_fitness_victoire_1 = TimeSlot.create!(
  name: "Séance de coaching",
  description: "Coaching personnalisé: Renforcement musculaire, perte de poids, cardio, remise en forme, réeducation etc.",
  level: "Tous niveaux",
  group_size: 1,
  price: 60,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("01/12/2021 13:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("01/11/2021 13:45", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)
creneau_fitness_victoire_1 = TimeSlot.create!(
  name: "Séance de coaching",
  description: "Coaching personnalisé: Renforcement musculaire, perte de poids, cardio, remise en forme, réeducation etc.",
  level: "Tous niveaux",
  group_size: 1,
  price: 60,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("02/12/2021 13:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("02/12/2021 13:45", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)
creneau_fitness_victoire_1 = TimeSlot.create!(
  name: "Séance de coaching",
  description: "Coaching personnalisé: Renforcement musculaire, perte de poids, cardio, remise en forme, réeducation etc.",
  level: "Tous niveaux",
  group_size: 1,
  price: 60,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("03/12/2021 13:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("03/12/2021 13:45", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)


creneau_fitness_victoire_1 = TimeSlot.create!(
  name: "Séance de coaching",
  description: "Coaching personnalisé: Renforcement musculaire, perte de poids, cardio, remise en forme, réeducation etc.",
  level: "Tous niveaux",
  group_size: 1,
  price: 60,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("03/12/2021 17:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("03/12/2021 17:45", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)

creneau_fitness_victoire_1 = TimeSlot.create!(
  name: "Séance de coaching",
  description: "Coaching personnalisé: Renforcement musculaire, perte de poids, cardio, remise en forme, réeducation etc.",
  level: "Tous niveaux",
  group_size: 1,
  price: 60,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("02/12/2021 17:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("02/12/2021 17:45", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)

creneau_fitness_victoire_1 = TimeSlot.create!(
  name: "Séance de coaching",
  description: "Coaching personnalisé: Renforcement musculaire, perte de poids, cardio, remise en forme, réeducation etc.",
  level: "Tous niveaux",
  group_size: 1,
  price: 60,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("30/11/2021 17:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("30/11/2021 17:45", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)

creneau_fitness_victoire_1 = TimeSlot.create!(
  name: "Séance de coaching",
  description: "Coaching personnalisé: Renforcement musculaire, perte de poids, cardio, remise en forme, réeducation etc.",
  level: "Tous niveaux",
  group_size: 1,
  price: 60,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("29/11/2021 17:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("29/11/2021 17:45", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)

# ///////////////////SEMAINE 2//////


creneau_fitness_victoire_1 = TimeSlot.create!(
  name: "Séance de coaching",
  description: "Coaching personnalisé: Renforcement musculaire, perte de poids, cardio, remise en forme, réeducation etc.",
  level: "Tous niveaux",
  group_size: 1,
  price: 60,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("06/12/2021 08:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("06/12/2021 09:00", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)

creneau_fitness_victoire_1 = TimeSlot.create!(
  name: "Séance de coaching",
  description: "Coaching personnalisé: Renforcement musculaire, perte de poids, cardio, remise en forme, réeducation etc.",
  level: "Tous niveaux",
  group_size: 1,
  price: 60,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("07/12/2021 08:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("07/12/2021 09:00", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)

creneau_fitness_victoire_1 = TimeSlot.create!(
  name: "Séance de coaching",
  description: "Coaching personnalisé: Renforcement musculaire, perte de poids, cardio, remise en forme, réeducation etc.",
  level: "Tous niveaux",
  group_size: 1,
  price: 60,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("08/12/2021 08:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("08/12/2021 09:00", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)
creneau_fitness_victoire_1 = TimeSlot.create!(
  name: "Séance de coaching",
  description: "Coaching personnalisé: Renforcement musculaire, perte de poids, cardio, remise en forme, réeducation etc.",
  level: "Tous niveaux",
  group_size: 1,
  price: 60,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("09/12/2021 08:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("09/12/2021 09:00", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)

creneau_fitness_victoire_1 = TimeSlot.create!(
  name: "Séance de coaching",
  description: "Coaching personnalisé: Renforcement musculaire, perte de poids, cardio, remise en forme, réeducation etc.",
  level: "Tous niveaux",
  group_size: 1,
  price: 60,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("10/12/2021 08:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("10/12/2021 09:00", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)
creneau_fitness_victoire_1 = TimeSlot.create!(
  name: "Séance de coaching",
  description: "Coaching personnalisé: Renforcement musculaire, perte de poids, cardio, remise en forme, réeducation etc.",
  level: "Tous niveaux",
  group_size: 1,
  price: 60,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("10/12/2021 13:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("10/12/2021 13:45", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)
creneau_fitness_victoire_1 = TimeSlot.create!(
  name: "Séance de coaching",
  description: "Coaching personnalisé: Renforcement musculaire, perte de poids, cardio, remise en forme, réeducation etc.",
  level: "Tous niveaux",
  group_size: 1,
  price: 60,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("09/12/2021 13:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("09/12/2021 13:45", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)
creneau_fitness_victoire_1 = TimeSlot.create!(
  name: "Séance de coaching",
  description: "Coaching personnalisé: Renforcement musculaire, perte de poids, cardio, remise en forme, réeducation etc.",
  level: "Tous niveaux",
  group_size: 1,
  price: 60,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("08/12/2021 13:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("08/11/2021 13:45", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)
creneau_fitness_victoire_1 = TimeSlot.create!(
  name: "Séance de coaching",
  description: "Coaching personnalisé: Renforcement musculaire, perte de poids, cardio, remise en forme, réeducation etc.",
  level: "Tous niveaux",
  group_size: 1,
  price: 60,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("07/12/2021 13:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("07/12/2021 13:45", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)
creneau_fitness_victoire_1 = TimeSlot.create!(
  name: "Séance de coaching",
  description: "Coaching personnalisé: Renforcement musculaire, perte de poids, cardio, remise en forme, réeducation etc.",
  level: "Tous niveaux",
  group_size: 1,
  price: 60,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("06/12/2021 13:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("06/12/2021 13:45", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)


creneau_fitness_victoire_1 = TimeSlot.create!(
  name: "Séance de coaching",
  description: "Coaching personnalisé: Renforcement musculaire, perte de poids, cardio, remise en forme, réeducation etc.",
  level: "Tous niveaux",
  group_size: 1,
  price: 60,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("06/12/2021 17:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("06/12/2021 18:45", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)

creneau_fitness_victoire_1 = TimeSlot.create!(
  name: "Séance de coaching",
  description: "Coaching personnalisé: Renforcement musculaire, perte de poids, cardio, remise en forme, réeducation etc.",
  level: "Tous niveaux",
  group_size: 1,
  price: 60,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("07/12/2021 17:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("07/12/2021 18:45", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)

creneau_fitness_victoire_1 = TimeSlot.create!(
  name: "Séance de coaching",
  description: "Coaching personnalisé: Renforcement musculaire, perte de poids, cardio, remise en forme, réeducation etc.",
  level: "Tous niveaux",
  group_size: 1,
  price: 60,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("09/12/2021 17:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("09/12/2021 18:45", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)

creneau_fitness_victoire_1 = TimeSlot.create!(
  name: "Séance de coaching",
  description: "Coaching personnalisé: Renforcement musculaire, perte de poids, cardio, remise en forme, réeducation etc.",
  level: "Tous niveaux",
  group_size: 1,
  price: 60,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("10/12/2021 17:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("10/12/2021 18:45", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)


creneau_fitness_victoire_2 = TimeSlot.create!(
  name: "Steps",
  description: "Venez bouger au rythme de la musique. Renforcement du bas du corps et travail du cardio. Prévoir serviette et eau.",
  level: "Intermédiaire",
  group_size: 10,
  price: 20,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("29/11/2021 09:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("29/11/2021 10:00", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)

creneau_fitness_victoire_2 = TimeSlot.create!(
  name: "Gym suédoise",
  description: "Abdos, épaules, bras, dos, cuisses, mollets… Les différents exercices proposés dans les cours de gym suédoise font travailler l'ensemble du corps grâce à des mouvements simples, mais toujours très toniques.",
  level: "Débutant",
  group_size: 10,
  price: 20,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("29/11/2021 10:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("29/11/2021 11:00", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)

creneau_fitness_victoire_2 = TimeSlot.create!(
  name: "Steps",
  description: "Venez bouger au rythme de la musique. Renforcement du bas du corps et travail du cardio. Prévoir serviette et eau.",
  level: "Expert",
  group_size: 10,
  price: 20,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("29/11/2021 16:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("29/11/2021 17:00", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)


creneau_fitness_victoire_2 = TimeSlot.create!(
  name: "Steps",
  description: "Venez bouger au rythme de la musique. Renforcement du bas du corps et travail du cardio. Prévoir serviette et eau.",
  level: "Intermédiaire",
  group_size: 10,
  price: 20,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("02/12/2021 09:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("02/12/2021 10:00", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)

creneau_fitness_victoire_2 = TimeSlot.create!(
  name: "Gym suédoise",
  description: "Abdos, épaules, bras, dos, cuisses, mollets… Les différents exercices proposés dans les cours de gym suédoise font travailler l'ensemble du corps grâce à des mouvements simples, mais toujours très toniques.",
  level: "Débutant",
  group_size: 10,
  price: 20,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("02/12/2021 10:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("02/12/2021 11:00", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)

creneau_fitness_victoire_2 = TimeSlot.create!(
  name: "Steps",
  description: "Venez bouger au rythme de la musique. Renforcement du bas du corps et travail du cardio. Prévoir serviette et eau.",
  level: "Expert",
  group_size: 10,
  price: 20,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("02/12/2021 16:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("02/12/2021 17:00", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)


creneau_fitness_victoire_2 = TimeSlot.create!(
  name: "Steps",
  description: "Venez bouger au rythme de la musique. Renforcement du bas du corps et travail du cardio. Prévoir serviette et eau.",
  level: "Intermédiaire",
  group_size: 10,
  price: 20,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("30/11/2021 09:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("30/11/2021 10:00", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)

creneau_fitness_victoire_2 = TimeSlot.create!(
  name: "Gym suédoise",
  description: "Abdos, épaules, bras, dos, cuisses, mollets… Les différents exercices proposés dans les cours de gym suédoise font travailler l'ensemble du corps grâce à des mouvements simples, mais toujours très toniques.",
  level: "Débutant",
  group_size: 10,
  price: 20,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("30/11/2021 10:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("30/11/2021 11:00", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)

creneau_fitness_victoire_2 = TimeSlot.create!(
  name: "Steps",
  description: "Venez bouger au rythme de la musique. Renforcement du bas du corps et travail du cardio. Prévoir serviette et eau.",
  level: "Expert",
  group_size: 10,
  price: 20,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("03/12/2021 16:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("03/12/2021 17:00", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)


creneau_fitness_victoire_2 = TimeSlot.create!(
  name: "Steps",
  description: "Venez bouger au rythme de la musique. Renforcement du bas du corps et travail du cardio. Prévoir serviette et eau.",
  level: "Intermédiaire",
  group_size: 10,
  price: 20,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("06/12/2021 09:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("06/12/2021 10:00", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)

creneau_fitness_victoire_2 = TimeSlot.create!(
  name: "Gym suédoise",
  description: "Abdos, épaules, bras, dos, cuisses, mollets… Les différents exercices proposés dans les cours de gym suédoise font travailler l'ensemble du corps grâce à des mouvements simples, mais toujours très toniques.",
  level: "Débutant",
  group_size: 10,
  price: 20,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("06/12/2021 10:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("06/12/2021 11:00", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)


creneau_fitness_victoire_2 = TimeSlot.create!(
  name: "Steps",
  description: "Venez bouger au rythme de la musique. Renforcement du bas du corps et travail du cardio. Prévoir serviette et eau.",
  level: "Intermédiaire",
  group_size: 10,
  price: 20,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("07/12/2021 09:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("07/12/2021 10:00", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)

creneau_fitness_victoire_2 = TimeSlot.create!(
  name: "Gym suédoise",
  description: "Abdos, épaules, bras, dos, cuisses, mollets… Les différents exercices proposés dans les cours de gym suédoise font travailler l'ensemble du corps grâce à des mouvements simples, mais toujours très toniques.",
  level: "Débutant",
  group_size: 10,
  price: 20,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("07/12/2021 10:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("07/12/2021 11:00", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)

creneau_fitness_victoire_2 = TimeSlot.create!(
  name: "Steps",
  description: "Venez bouger au rythme de la musique. Renforcement du bas du corps et travail du cardio. Prévoir serviette et eau.",
  level: "Expert",
  group_size: 10,
  price: 20,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("07/12/2021 16:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("07/12/2021 17:00", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)


creneau_fitness_victoire_2 = TimeSlot.create!(
  name: "Steps",
  description: "Venez bouger au rythme de la musique. Renforcement du bas du corps et travail du cardio. Prévoir serviette et eau.",
  level: "Intermédiaire",
  group_size: 10,
  price: 20,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("09/12/2021 09:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("09/11/2021 10:00", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)

creneau_fitness_victoire_2 = TimeSlot.create!(
  name: "Steps",
  description: "Venez bouger au rythme de la musique. Renforcement du bas du corps et travail du cardio. Prévoir serviette et eau.",
  level: "Débutant",
  group_size: 10,
  price: 20,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("09/12/2021 10:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("09/12/2021 11:00", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)

creneau_fitness_victoire_2 = TimeSlot.create!(
  name: "Steps",
  description: "Venez bouger au rythme de la musique. Renforcement du bas du corps et travail du cardio. Prévoir serviette et eau.",
  level: "Expert",
  group_size: 10,
  price: 20,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("10/12/2021 16:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("10/12/2021 17:00", "%d/%m/%Y %H:%M"),
  sport_class: fitness_victoire
)





creneau_yoga_victoire_1 = TimeSlot.create!(
  name: "Hatha yoga",
  description: "C’est un yoga doux dont chaque posture doit normalement être adaptée au niveau de chacun. Il n’existe ainsi aucune contre-indication particulière. Le hatha yoga peut se pratiquer à tout âge. Il est même conseillé aux personnes qui n’aiment pas le sport puisqu’il est davantage une méthode de relaxation et de bien-être. ",
  level: "Tous niveaux",
  group_size: 10,
  price: 20,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("01/12/2021 14:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("01/12/2021 15:30", "%d/%m/%Y %H:%M"),
  sport_class: yoga_victoire
)
creneau_yoga_victoire_1 = TimeSlot.create!(
  name: "Hatha yoga",
  description: "C’est un yoga doux dont chaque posture doit normalement être adaptée au niveau de chacun. Il n’existe ainsi aucune contre-indication particulière. Le hatha yoga peut se pratiquer à tout âge. Il est même conseillé aux personnes qui n’aiment pas le sport puisqu’il est davantage une méthode de relaxation et de bien-être. ",
  level: "Tous niveaux",
  group_size: 10,
  price: 20,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("02/12/2021 14:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("02/12/2021 15:30", "%d/%m/%Y %H:%M"),
  sport_class: yoga_victoire
)
creneau_yoga_victoire_1 = TimeSlot.create!(
  name: "Hatha yoga",
  description: "C’est un yoga doux dont chaque posture doit normalement être adaptée au niveau de chacun. Il n’existe ainsi aucune contre-indication particulière. Le hatha yoga peut se pratiquer à tout âge. Il est même conseillé aux personnes qui n’aiment pas le sport puisqu’il est davantage une méthode de relaxation et de bien-être. ",
  level: "Tous niveaux",
  group_size: 10,
  price: 20,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("06/12/2021 14:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("06/12/2021 15:30", "%d/%m/%Y %H:%M"),
  sport_class: yoga_victoire
)
creneau_yoga_victoire_1 = TimeSlot.create!(
  name: "Hatha yoga",
  description: "C’est un yoga doux dont chaque posture doit normalement être adaptée au niveau de chacun. Il n’existe ainsi aucune contre-indication particulière. Le hatha yoga peut se pratiquer à tout âge. Il est même conseillé aux personnes qui n’aiment pas le sport puisqu’il est davantage une méthode de relaxation et de bien-être. ",
  level: "Tous niveaux",
  group_size: 10,
  price: 20,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("09/12/2021 14:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("09/12/2021 15:30", "%d/%m/%Y %H:%M"),
  sport_class: yoga_victoire
)

creneau_yoga_victoire_4 = TimeSlot.create!(
  name: "Découverte Yoga",
  description: "N'hésite pas à inviter tes amis. Petit prix pour session d'initiation",
  level: "Débutant",
  group_size: 15,
  price: 15,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("30/11/2021 11:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("30/11/2021 12:00", "%d/%m/%Y %H:%M"),
  sport_class: yoga_victoire
)

creneau_yoga_victoire_4 = TimeSlot.create!(
  name: "Découverte Yoga",
  description: "N'hésite pas à inviter tes amis. Petit prix pour session d'initiation",
  level: "Débutant",
  group_size: 30,
  price: 15,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("03/12/2021 11:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("03/12/2021 12:00", "%d/%m/%Y %H:%M"),
  sport_class: yoga_victoire
)



creneau_yoga_victoire_4 = TimeSlot.create!(
  name: "Découverte Yoga",
  description: "N'hésite pas à inviter tes amis. Petit prix pour session d'initiation",
  level: "Débutant",
  group_size: 30,
  price: 15,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("10/12/2021 11:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("10/12/2021 12:00", "%d/%m/%Y %H:%M"),
  sport_class: yoga_victoire
)

creneau_pilates_victoire_1 = TimeSlot.create!(
  name: "Pilates sur reformer",
  description: "Le pilates a pour but de faire travailler la posture, les muscles et la mobilité en douceur.",
  level: "Débutant",
  group_size: 2,
  price: 35,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("03/12/2021 9:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("07/12/2021 10:00", "%d/%m/%Y %H:%M"),
  sport_class: pilates_victoire
)

creneau_pilates_victoire_1 = TimeSlot.create!(
  name: "Pilates sur reformer",
  description: "Le pilates a pour but de faire travailler la posture, les muscles et la mobilité en douceur.",
  level: "Débutant",
  group_size: 2,
  price: 35,
  address1: "20 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("03/12/2021 19:30", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("03/12/2021 20:30", "%d/%m/%Y %H:%M"),
  sport_class: pilates_victoire
)

# //////////////////////////////
# /////////////






puts "#{TimeSlot.count} slots were created"

# ===========================
# Booking Créneau automatique
# ===========================

TimeSlot.all.each do |timeslot|
  clients = User.all.map { |user| user if user.is_client? }.compact
  rand((timeslot.group_size * 0.7).floor..timeslot.group_size).times do
    # clients = clients.map { |client| client if timeslot.any? }.compact
    client = clients.sample
    if client.present?
      Booking.create!(
        time_slot: timeslot,
        client: client,
        payment_received: rand(100) < 80
      )
      clients.delete(client)
    end
  end
end

# 10.times do
#   Booking.create!(
#     time_slot: TimeSlot.all.sample,
#     client: clients.sample
#   )
# end

puts "#{Booking.count} bookings were created"
