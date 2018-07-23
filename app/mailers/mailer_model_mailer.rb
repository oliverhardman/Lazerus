class MailerModelMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.mailer_model_mailer.transactional_email.subject


  def transactional_email(email)
    @email = email
    logger.debug("1111111111111")
    logger.debug(@email)

  # mail to: @email, subject: "Success! You did it."
  mg_client = Mailgun::Client.new 'c5803a2ccd4b67ad72505a01fd715e8b-0470a1f7-a6061111'


  message_params =  { from: 'postmaster@sandboxeacc4d69c099459ea4ea10630ae6f341.mailgun.org',
                      to:   @email,
                      subject: 'Thank you form your purchase',
                      text:    'Thank you!, Hope to see you again'
                    }
  mg_client.send_message 'sandboxeacc4d69c099459ea4ea10630ae6f341.mailgun.org', message_params

  
  end


# def arthur_email
#   RestClient.post "https://api:#{c5803a2ccd4b67ad72505a01fd715e8b-0470a1f7-a6061111}"\"@api.mailgun.net/v3/sandboxeacc4d69c099459ea4ea10630ae6f341.mailgun.org/messages",
# :from => "You made a Task. <mailgun@sandboxeacc4d69c099459ea4ea10630ae6f341.mailgun.org>",
#  :to => user.email,
#  :subject => "Arthur",
#  :text => "Thank you for creating a Task. I hope you enjoy your stay here with GigHelp"
# end





end

