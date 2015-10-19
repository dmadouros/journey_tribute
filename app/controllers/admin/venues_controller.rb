class Admin::VenuesController < Admin::AdminController
  def index
    @venues = Venue.all.order(:name)
  end

  def edit
    @venue = Venue.find(params[:id])
  end

  def update
    @venue = Venue.find(params[:id])

    if @venue.update_attributes(venue_params)
      redirect_to admin_venues_path
    else
      render :edit
    end
  end

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(venue_params)

    if @venue.save
      redirect_to admin_venues_path
    else
      render :new
    end
  end

  def destroy
    @venue = Venue.find(params[:id])
    @venue.destroy

    redirect_to admin_venues_path
  end

  private

  def venue_params
    params.require(:venue).permit(:name, :address_1, :city, :state, :zip_code, :phone_number, :web_address, :map_link)
  end
end
