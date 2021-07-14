require 'test_helper'

class AppointmentMailerTest < ActionMailer::TestCase
  test "confirmed" do
    mail = AppointmentMailer.confirmed
    assert_equal "Confirmed", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
