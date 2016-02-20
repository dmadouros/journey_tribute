class Admin::AdditionalBandsController < Admin::AdminController
  def edit
    @show = Show.find(params[:show_id])
    @additional_band = @show.additional_bands.find(params[:id])
    @bands = Band.all
  end

  def update
    @show = Show.find(params[:show_id])
    @additional_band = @show.additional_bands.find(params[:id])

    if @additional_band.update_attributes(additional_band_params)
      redirect_to admin_show_path(@show)
    else
      @bands = Band.all
      render :edit
    end
  end

  def new
    @show = Show.find(params[:show_id])
    @additional_band = @show.additional_bands.new
    @bands = Band.all
  end

  def create
    @show = Show.find(params[:show_id])
    @additional_band = @show.additional_bands.new(additional_band_params)

    if @additional_band.save
      redirect_to admin_show_path(@show)
    else
      @bands = Band.all
      render :new
    end
  end

  def destroy
    @show = Show.find(params[:show_id])
    @additional_band = @show.additional_bands.find(params[:id])
    @additional_band.destroy

    redirect_to admin_show_path(@show)
  end

  private

  def additional_band_params
    params.require(:additional_band).permit(:starts_at, :ends_at, :band_id)
  end
end
