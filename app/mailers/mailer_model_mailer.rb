class MailerModelMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.mailer_model_mailer.transactional_email.subject
  #
  def transactional_email
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
