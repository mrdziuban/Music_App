class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def activation_email(user)
    @user = user
    @url = "http://localhost:3000/users/#{@user.id}/activate?token=#{@user.activation_token}"
    mail(to: @user.email, subject: "Activate your account")
  end
end

# users table
# activation_token => random string
# activation_token => "activated"
