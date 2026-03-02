require_relative 'lib/user'
require_relative 'lib/event'
require 'pry'

# Création d'utilisateurs
julie = User.new("julie@email.com", 32)
jean = User.new("jean@email.com", 23)
puts "Tous les utilisateurs :"
puts User.all.inspect

# Création d'un événement
my_event = Event.new("2026-03-02 14:00", 45, "Réunion projet", ["julie@email.com", "jean@email.com"])
puts my_event.to_s

# Tests des méthodes
puts "Est-ce passé ? #{my_event.is_past?}"
puts "Est-ce dans le futur ? #{my_event.is_future?}"
puts "Est-ce bientôt ? #{my_event.is_soon?}"

# Décaler l'événement de 24h
my_event.postpone_24h
puts "Nouvelle date après décalage : #{my_event.start_date}"

# Ouvrir Pry pour tester interactif
binding.pry
