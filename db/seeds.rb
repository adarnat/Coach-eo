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
  password: "password"
)

henri_client = User.create!(
  first_name: "Henri",
  last_name: "IV",
  email: "henri@gmail.com",
  password: "password"
)

miguel_client = User.create!(
  first_name: "Miguel",
  last_name: "Sanchez",
  email: "miguel@gmail.com",
  password: "password"
)


dinah_client = User.create!(
  first_name: "Dinah",
  last_name: "Miaou",
  email: "dinah@gmail.com",
  password: "password"
)


holly_client = User.create!(
  first_name: "Holly",
  last_name: "Bellemare",
  email: "holly@gmail.com",
  password: "password"
)

arthur_client = User.create!(
  first_name: "Arthur",
  last_name: "Laforêt",
  email: "arthur@gmail.com",
  password: "password"
)

cecile_client = User.create!(
  first_name: "Cécile",
  last_name: "Chevalier",
  email: "cecile@gmail.com",
  password: "password"
)

jeanro_client = User.create!(
  first_name: "Jeanro",
  last_name: "Croissant",
  email: "jeanro@gmail.com",
  password: "password"

miguel_client = User.create!(
  first_name: "Miguel",
  last_name: "Sanchez",
  email: "miguel@gmail.com",
  password: "password"
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
  address1: "4 rue des Capucins",
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
  address1: "4 rue des Capucins",
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
  address1: "4 rue des Capucins",
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
  address1: "4 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  coach: john_coach
)

# ================
# Cours coach Victoire
# ================

ski_victoire = SportClass.create!(
  category: "Ski",
  name: "Ski de piste",
  description: "Venez goûter la poudreuse tout schuss sur les pistes",
  level: "Expert",
  group_size: 5,
  price: 50,
  duration: 120,
  address1: "4 rue des Capucins",
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
  address1: "4 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("20/11/2021 8:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("20/11/2021 9:30", "%d/%m/%Y %H:%M"),
  sport_class: yoga_mike
)

  creneau_yoga_mike_2 = TimeSlot.create!(
  name: "Air Yoga",
  description: "Yoga dans les rideaux pour un niveau intermédiaire",
  level: "Intermédiaire",
  group_size: 5,
  price: 20,
  address1: "4 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("24/11/2021 10:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("24/11/2021 12:00", "%d/%m/%Y %H:%M"),
  sport_class: yoga_mike
)
  creneau_yoga_mike_3 = TimeSlot.create!(
  name: "Pilates",
  description: "Pilates sur reformer",
  level: "Débutant",
  group_size: 1,
  price: 60,
  address1: "4 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("25/11/2021 14:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("25/11/2021 15:00", "%d/%m/%Y %H:%M"),
  sport_class: yoga_mike
)
  creneau_yoga_mike_4 = TimeSlot.create!(
  name: "Air Yoga",
  description: "Yoga dans les rideaux pour un niveau intermédiaire",
  level: "Intermédiaire",
  group_size: 5,
  price: 20,
  address1: "4 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("25/11/2021 10:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("25/11/2021 12:00", "%d/%m/%Y %H:%M"),
  sport_class: yoga_mike
)
  creneau_yoga_mike_5 = TimeSlot.create!(
  name: "alta Yoga",
  description: "Yoga sur tapis",
  level: "Expert",
  group_size: 7,
  price: 20,
  address1: "4 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("25/11/2021 9:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("25/11/2021 10:00", "%d/%m/%Y %H:%M"),
  sport_class: yoga_mike
)

creneau_yoga_mike_3 = TimeSlot.create!(
  name: "Pilates",
  description: "Pilates sur reformer",
  level: "Débutant",
  group_size: 1,
  price: 60,
  address1: "4 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("25/11/2021 14:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("25/11/2021 15:00", "%d/%m/%Y %H:%M"),
  sport_class: yoga_mike
)
  creneau_yoga_mike_4 = TimeSlot.create!(
  name: "Air Yoga",
  description: "Yoga dans les rideaux pour un niveau intermédiaire",
  level: "Intermédiaire",
  group_size: 5,
  price: 20,
  address1: "4 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("25/11/2021 10:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("25/11/2021 12:00", "%d/%m/%Y %H:%M"),
  sport_class: yoga_mike
)

  creneau_yoga_mike_5 = TimeSlot.create!(
  name: "alta Yoga",
  description: "Yoga sur tapis",
  level: "Expert",
  group_size: 7,
  price: 20,
  address1: "4 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("25/11/2021 9:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("25/11/2021 10:00", "%d/%m/%Y %H:%M"),
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
  address1: "4 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("23/11/2021 14:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("23/11/2021 16:00", "%d/%m/%Y %H:%M"),
  sport_class: meditation_mike
)

creneau_meditation_mike_1 = TimeSlot.create!(
  name: "Méditation en plein air",
  description: "Venez vous ressourcer au milieu de la nature, accompagné du chant des oiseaux. Tout le monde il est beau, tout le monde il est gentil",
  level: "Tous niveaux",
  group_size: 10,
  price: 20,
  address1: "4 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("26/11/2021 15:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("26/11/2021 17:00", "%d/%m/%Y %H:%M"),
  sport_class: meditation_mike
)

# ====================
# Créneaux Pilates John
# ====================

creneau_pilates_john_1 = TimeSlot.create!(
  name: "Initiation au pilates",
  description: "Cours de découverte du pilates pour débutant",
  level: "Débutant",
  group_size: 3,
  price: 20,
  address1: "4 rue des Capucins",
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
  address1: "4 rue des Capucins",
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
  address1: "4 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("27/11/2021 15:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("27/11/2021 16:30", "%d/%m/%Y %H:%M"),
  sport_class: crossfit_john
)

puts "#{TimeSlot.count} slots were created"

# ======================
# Créneaux Ski Victoire
# ======================
creneau_ski_victoire = TimeSlot.create!(
  name: "Ski de piste ",
  description: "Tout schuss sur les pistes",
  level: "Expert",
  group_size: 5,
  price: 50,
  address1: "4 rue des Capucins",
  address2: "",
  post_code: "69001",
  town: "Lyon",
  start_at: DateTime.strptime("01/12/2021 15:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("01/12/2021 16:00", "%d/%m/%Y %H:%M"),
  sport_class: ski_victoire
)

# ===========================
# Booking Créneau automatique
# ===========================

TimeSlot.all.each do |timeslot|
  clients = User.all.map { |user| user if user.is_client? }.compact
  rand(0..timeslot.group_size).times do
    # clients = clients.map { |client| client if timeslot.any? }.compact
    client = clients.sample
    if client.present?
      Booking.create!(
        time_slot: timeslot,
        client: client
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
