require 'sendgrid-ruby'
include SendGrid
require 'json'

class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.request.subject
  #
  def request2(contact)
    @contact = contact

    mail to: "denverpoolmanagement@gmail.com", subject: "New Contact Request!"
  end

end

