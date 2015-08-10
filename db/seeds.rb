# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

mirage = Venue.create!(
  name: 'The Mirage Sports Bar & Grill',
  city: 'Lakewood',
  state: 'CO'
)

nissis = Venue.create!(
  name: "Nissi's",
  city: 'Layfette',
  state: 'CO'
)

highlands_ranch = Venue.create!(
  name: "",
  city: 'Highlands Ranch',
  state: 'CO'
)

d_note = Venue.create!(
  name: "The D-Note",
  city: 'Arvada',
  state: 'CO'
)

tailgate_tavern = Venue.create!(
  name: "Tailgate Tavern",
  city: 'Parker',
  state: 'CO'
)

prairie_biker_rally = Venue.create!(
  name: "",
  city: 'Brush',
  state: 'CO'
)

lakewood = Venue.create!(
  name: "",
  city: 'Lakewood',
  state: 'CO'
)

left_hand = Venue.create!(
  name: "Left Hand Brewing Co.",
  city: 'Longmont',
  state: 'CO'
)

boulder_theater = Venue.create!(
  name: "The Boulder Theater",
  city: 'Boulder',
  state: 'CO'
)

toad_tavern = Venue.create!(
  name: "The Toad Tavern",
  city: 'Littleton',
  state: 'CO'
)

parker = Venue.create!(
  name: "",
  city: 'Parker',
  state: 'CO'
)

olde_town_tavern = Venue.create!(
  name: "The Olde Towne Tavern",
  city: 'Arvada',
  state: 'CO'
)

telluride = Venue.create!(
  name: '',
  city: 'Telluride',
  state: 'CO'
)

castle_rock = Venue.create!(
  name: '',
  city: 'Castle Rock',
  state: 'CO'
)

# 2012

Show.create!(
  starts_at: DateTime.new(2012, 1, 21),
  name: mirage.name,
  venue: mirage
)

Show.create!(
  starts_at: DateTime.new(2012, 6, 8),
  name: d_note.name,
  venue: d_note
)

Show.create!(
  starts_at: DateTime.new(2012, 7, 4),
  name: 'Spotlight on the Plaza',
  venue: highlands_ranch
)

Show.create!(
  starts_at: DateTime.new(2012, 8, 24),
  name: nissis.name,
  venue: nissis
)

Show.create!(
  starts_at: DateTime.new(2012, 10, 6),
  name: d_note.name,
  venue: d_note
)

# 2013
Show.create!(
  starts_at: DateTime.new(2013, 1, 19),
  name: d_note.name,
  venue: d_note
)

Show.create!(
  starts_at: DateTime.new(2013, 3, 8),
  name: nissis.name,
  venue: nissis
)

Show.create!(
  starts_at: DateTime.new(2013, 4, 19),
  name: d_note.name,
  venue: d_note
)

Show.create!(
  starts_at: DateTime.new(2013, 7, 4),
  name: '4th of July Celebration',
  venue: highlands_ranch
)

Show.create!(
  starts_at: DateTime.new(2013, 7, 17),
  name: 'Lakewood Concert Series',
  venue: lakewood
)

Show.create!(
  starts_at: DateTime.new(2013, 8, 3),
  name: 'Leftapalooza',
  venue: left_hand
)

Show.create!(
  starts_at: DateTime.new(2013, 8, 24),
  name: 'Prairie Biker Rally',
  venue: prairie_biker_rally
)

Show.create!(
  starts_at: DateTime.new(2013, 9, 27),
  name: nissis.name,
  venue: nissis
)

Show.create!(
  starts_at: DateTime.new(2013, 10, 3),
  name: tailgate_tavern.name,
  venue: tailgate_tavern
)

# 2014

Show.create!(
  starts_at: DateTime.new(2014, 8, 30),
  name: nissis.name,
  venue: nissis
)

Show.create!(
  starts_at: DateTime.new(2014, 7, 10),
  name: 'HRCA Summer Concert',
  venue: highlands_ranch
)

Show.create!(
  starts_at: DateTime.new(2014, 6, 14),
  name: 'Parker Days',
  venue: parker
)

Show.create!(
  starts_at: DateTime.new(2014, 4, 25),
  name: d_note.name,
  venue: d_note
)

Show.create!(
  starts_at: DateTime.new(2014, 3, 28),
  name: toad_tavern.name,
  venue: toad_tavern
)

Show.create!(
  starts_at: DateTime.new(2014, 3, 1),
  name: tailgate_tavern.name,
  venue: tailgate_tavern
)

Show.create!(
  starts_at: DateTime.new(2014, 1, 10),
  name: boulder_theater.name,
  venue: boulder_theater
)

# 2015

Show.create!(
  starts_at: DateTime.new(2015, 8, 1),
  name: 'Leftapalooza',
  venue: left_hand
)

Show.create!(
  starts_at: DateTime.new(2015, 7, 16),
  name: 'HRCA Summer Concert',
  venue: highlands_ranch
)

Show.create!(
  starts_at: DateTime.new(2015, 5, 15),
  name: nissis.name,
  venue: nissis
)

Show.create!(
  starts_at: DateTime.new(2015, 3, 20),
  name: 'Telluride Tribute Band Festival',
  venue: telluride
)

Show.create!(
  starts_at: DateTime.new(2015, 1, 17),
  name: olde_town_tavern.name,
  venue: olde_town_tavern
)

Show.create!(
  starts_at: DateTime.new(2015, 8, 5),
  name: 'Music in the Meadows',
  venue: castle_rock
)
