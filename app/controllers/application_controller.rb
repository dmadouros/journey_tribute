class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :next_show

  def next_show
    @next_show = Show.next.try(:decorate)
  end
end
