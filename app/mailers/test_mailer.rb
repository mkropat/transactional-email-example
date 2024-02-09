class TestMailer < ApplicationMailer
  default from: 'your.email@example.com'

  def test_email
    @subject = params[:subject]
    mail(to: 'your.address@gmail.com', subject: @subject)
  end
end
