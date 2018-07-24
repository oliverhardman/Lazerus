class MailerModelMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.mailer_model_mailer.transactional_email.subject


  def transactional_email(email)
    @email = email
    

  # mail to: @email, subject: "Success! You did it."
  mg_client = Mailgun::Client.new Rails.application.credentials.mailgun[:api]


  message_params =  { from: Rails.application.credentials.mailgun[:postmaster],
                      to:   @email,
                      subject: 'Thank you form your purchase',
                      text:    'Thank you!, Hope to see you again'
                    }
  mg_client.send_message Rails.application.credentials.mailgun[:mail], message_params

  
  end








end

