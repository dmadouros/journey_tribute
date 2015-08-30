class Admin::VenuesController < Admin::AdminController
  def index
    @venues = Venue.all.order(:name)
  end
end
