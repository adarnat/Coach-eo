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
  # name: "Mike",
  email: "mike@gmail.com",
  password: "password"
)

john_coach = User.create!(
  # name: "John",
  email: "john@gmail.com",
  password: "password"
)

# =======
# Clients
# =======

alex_client = User.create!(
  # name: "Alex",
  email: "alex@gmail.com",
  password: "password"
)

henri_client = User.create!(
  # name: "Henri",
  email: "henri@gmail.com",
  password: "password"
)

miguel_client = User.create!(
  # name: "Miguel",
  email: "miguel@gmail.com",
  password: "password"
)

puts "#{User.count} users were created"

# ================
# Cours coach Mike
# ================

yoga_mike = SportClass.create!(
  name: "Air yoga",
  description: "Yoga dans les rideaux pour un niveau intermédiaire",
  category: "Yoga",
  coach: mike_coach
)

meditation_mike = SportClass.create!(
  name: "Médidation en plein air",
  description: "Venez vous ressourcer au milieu de la nature, accompagné du chant des oiseaux. Tout le monde il est beau, tout le monde il est gentil",
  category: "Méditation",
  coach: mike_coach
)

# ================
# Cours coach John
# ================

pilates_john = SportClass.create!(
  name: "Initiation au pilates",
  description: "Cours de découverte du pilates pour débutant",
  category: "Pilates",
  coach: john_coach
)

crossfit_john = SportClass.create!(
  name: "Crossfit intensif",
  description: "Cours de crossfit en salle pour intermédiaires et experts. Musculature squelettique s'abstenir...",
  category: "Crossfit",
  coach: john_coach
)

puts "#{SportClass.count} sprot classes were created"

# ==================
# Créneaux Yoga Mike
# ==================

creneau_yoga_mike = TimeSlot.create!(
  level: "Intermédiaire",
  group_size: 10,
  price: 20,
  start_at: DateTime.strptime("20/11/2021 8:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("20/11/2021 9:30", "%d/%m/%Y %H:%M"),
  sport_class: yoga_mike
)

creneau_meditation_mike = TimeSlot.create!(
  level: "Tous niveaux",
  group_size: 5,
  price: 20,
  start_at: DateTime.strptime("23/11/2021 10:00", "%d/%m/%Y %H:%M"),
  end_at: DateTime.strptime("23/11/2021 12:00", "%d/%m/%Y %H:%M"),
  sport_class: yoga_mike
)

puts "#{TimeSlot.count} slots were created"


# ===========================
# Booking Créneau 1 Yoga Mike
# ===========================


Booking.create!(
  time_slot: creneau_yoga_mike,
  client: alex_client
)

puts "#{Booking.count} bookings were created"
