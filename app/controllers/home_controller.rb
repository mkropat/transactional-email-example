class HomeController < ApplicationController
  @@current_test_number = 1

  def index
    @test_number = @@current_test_number
  end

  def send_email
    TestMailer.with(subject: "Test #{@@current_test_number}").test_email.deliver_now
    redirect_to root_path, notice: "Email #{@@current_test_number} sent successfully."
    @@current_test_number += 1
  end
end
