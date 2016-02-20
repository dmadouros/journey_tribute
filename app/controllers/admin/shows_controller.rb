class Admin::ShowsController < Admin::AdminController
  def index
    @shows = Show.all.order(starts_at: :desc)
  end

  def show
    @show = Show.find(params[:id]).decorate
  end

  def new
    @show = Show.new
    @venues = ::Venue.all.map { |venue| Venue.new(venue) }.sort_by { |venue| venue.name }
  end

  def create
    @show = Show.create(show_params)

    if @show.save
      redirect_to admin_shows_url
    end
  end

  def edit
    @show = Show.find(params[:id])
    @venues = ::Venue.all.map { |venue| Venue.new(venue) }.sort_by { |venue| venue.name }

    render :edit
  end

  def update
    @show = Show.find(params[:id])
    if @show.update_attributes(show_params)
      redirect_to admin_shows_url
    end
  end

  def destroy
    Show.find(params[:id]).destroy

    redirect_to admin_shows_url
  end

  private

  def show_params
    params.require(:show).permit(:starts_at, :ends_at, :name, :venue_id, :notes)
  end

  class Venue < SimpleDelegator
    def initialize(venue)
      @venue = venue
      super(venue)
    end

    def name
      @venue.name.presence || @venue.city
    end
  end
end
