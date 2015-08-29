class ContactMailer < ApplicationMailer
  default from: 'david.madouros@gmail.com'

  def contact(params)
    @reason = params[:reason]
    @first_name = params[:first_name]
    @last_name = params[:last_name]
    @email = params[:email]
    @comments = params[:comments]

    mail(to: ENV.fetch('CONTACT_TO'), subject: 'Contact from journeythrutime.com')
  end
end
