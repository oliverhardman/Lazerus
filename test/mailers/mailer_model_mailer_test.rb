require 'test_helper'

class MailerModelMailerTest < ActionMailer::TestCase
  test "transactional_email" do
    mail = MailerModelMailer.transactional_email
    assert_equal "Transactional email", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
