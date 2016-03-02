class ShowsController < ApplicationController
  def index

    unless Show.exists?
      left_hand_brewery = Venue.create!(
        name: 'Left Hand Brewing Co',
        address_1: '1265 Boston Ave',
        city: 'Longmont',
        state: 'CO',
        zip_code: '80501'
      )

      leftapalooza = Show.create!(
        name: 'Leftapalooza',
        starts_at: DateTime.new(2015, 8, 1, 13),
        ends_at: DateTime.new(2015, 8, 1, 13, 45),
        venue: left_hand_brewery
      )

      castle_rock = Venue.create!(
        city: 'Castle Rock',
        state: 'CO',
      )

      castle_rock_conert = Show.create!(
        name: 'Castle Rock Concert',
        starts_at: DateTime.new(2015, 8, 5, 18, 30),
        ends_at: DateTime.new(2015, 8, 5, 20, 30),
        venue: castle_rock
      )
    end

    @shows = Show.current.decorate
    @past = Show.past.decorate
  end
end
