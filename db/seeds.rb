# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)
Flat.create!(
  name: 'A pink pink room',
  address: '13 rue gustave Flaubert',
  description: 'BACKOCCON fiehfefbefjkb lan living area, large kitchen and a beautiful clean clean',
  price_per_night: 100,
  number_of_guests: 2
)

Flat.create!(
  name: 'Black room for experiments',
  address: '09 place de la fin des temps',
  description: 'You cant see light from this room. For very depressed only.',
  price_per_night: 69,
  number_of_guests: 4
)

Flat.create!(
  name: 'Jeana room in the sun',
  address: '50 Lame pine Road',
  description: 'A place that has windows, lot of spaces and a few dead bodies',
  price_per_night: 55,
  number_of_guests: 3
)

Flat.create!(
  name: 'The last one of the seed',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'just a garden with no funitures, nothing.',
  price_per_night: 25,
  number_of_guests: 9
)
