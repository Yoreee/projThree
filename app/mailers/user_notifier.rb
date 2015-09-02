class UserNotifier < ApplicationMailer
    def send_signup_email(user)
        @user = user
        mail( :to => @user.email,
        :subject => 'Thanks for signing up for Concert App' )
    end
end
