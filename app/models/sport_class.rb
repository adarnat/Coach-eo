class SportClass < ApplicationRecord

  SPORT_CATEGORY = ['Aerobic', 'Alpinisme', 'Aquabike', 'Aquagym', 'Arts du cirque',
    'Athlétisme', 'Aviation', 'Aviron', 'Badminton', 'Biathlon', 'Boxe', 'Boxe anglaise',
    'Boxe chinoise', 'Boxe française', 'Boxe thaïlandaise', 'Canoë', 'Canoë-kayak',
    'Canyoning', 'Corde à sauter', 'Course', 'Course à pied', 'Course d’orientation',
    'Course de cote', 'Cross training', 'Cross-country', 'Crossfit', 'Cyclisme',
    'Cyclisme sur route', 'Cyclo cross', 'Danse', 'Danse africaine', 'Danse classique',
    'Danse contemporaine', 'Danse country', 'Danse indienne', 'Danse orientale',
    'Danse rock', 'Enduro', 'Equitation', 'Escalade', 'Escrime', 'Fitness', 'Flag',
    'Football', 'Footing', 'Golf', 'Gymnastique', 'Gymnastique artistique', 'Gymnastique rythmique',
    'Haltérophilie', 'Handball', 'Handisport', 'Hip hop', 'Judo', 'Karaté', 'Karting',
    'Kayak', 'Luge', 'Lutte', 'Marathon', 'Marche', 'Marche nordique', 'Marche sportive',
    'Méditation', 'Musculation', 'Natation', 'Natation synchronisée', 'Paddle', 'Parachutisme',
    'Paramoteur', 'Parapente', 'Parkour', 'Patinage', 'Patinage artistique', 'Patinage de vitesse',
    'Pétanque', 'Pilates', 'Ping pong', 'Planche à voile', 'Plongée', 'Plongeon',
    'Pole dance', 'Polo', 'Roller', 'Rugby', 'Salsa', 'Samba', 'Sambo', 'Saut à la perche',
    'Saut en longueur', 'Sauvetage', 'Self défense', 'Ski', 'Ski alpin', 'Ski de fond',
    'Ski nautique', 'Slackline', 'Snowboard', 'Snowkite', 'Stretching', 'Surf', 'Taekwondo',
    'Tango', 'Tennis', 'Tennis de table', 'Tir', 'Tir à l’arc', 'Trail', 'Trampoline',
    'Trapèze', 'Triathlon', 'Trottinette', 'ULM', 'Ultimate', 'Ultimate fresbee', 'Vélo',
    'Voile', 'Volleyball', 'Voltige', 'VTT', 'Wakeboard', 'Waterpolo', 'Yoga', 'Zumba']

    LEVELS = ['Débutant', 'Intermédiaire', 'Expert', 'Tous niveaux']

  belongs_to :coach, class_name: "User"
  has_many :time_slots

  validates :name, presence: true
  validates :description, presence: true
  validates :category, presence: true

end
