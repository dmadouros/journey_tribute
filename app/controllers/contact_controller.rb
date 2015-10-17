class ContactController < ApplicationController
  def create
    ContactMailer.contact(params).deliver_later

    redirect_to contact_url, flash: {thanks: true}
  end
end
