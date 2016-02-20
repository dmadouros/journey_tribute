class Admin::BandsController < Admin::AdminController
  def index
    @bands = Band.all.order(:name)
  end

  def edit
    @band = Band.find(params[:id])
  end

  def update
    @band = Band.find(params[:id])

    if @band.update_attributes(band_params)
      redirect_to admin_bands_path
    else
      render :edit
    end
  end

  def new
    @band = Band.new
  end

  def create
    @band = Band.new(band_params)

    if @band.save
      redirect_to admin_bands_path
    else
      render :new
    end
  end

  def destroy
    @band = Band.find(params[:id])
    @band.destroy

    redirect_to admin_bands_path
  end

  private

  def band_params
    params.require(:band).permit(:name, :web_address)
  end
end
