class Admin::ShowsController < Admin::AdminController
  def index
    @shows = Show.all.order(starts_at: :desc)
  end
end
