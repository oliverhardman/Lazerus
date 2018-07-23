# Preview all emails at http://localhost:3000/rails/mailers/mailer_model_mailer
class MailerModelMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/mailer_model_mailer/transactional_email
  def transactional_email
    MailerModelMailer.transactional_email
  end

end
