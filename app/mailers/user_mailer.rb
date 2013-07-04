class UserMailer < ActionMailer::Base
  def welcome_email(user,email_body)
  	@user = user
  	@url = '/login'
  	mail = Mail.new do
  	  from '万门大学'
      to user.email
	  subject '欢迎来万门'
	  content_type "text/html"
	  body email_body
	end
	require 'tlsmail'
	Net::SMTP.enable_tls(OpenSSL::SSL::VERIFY_NONE)
  	Net::SMTP.start('smtp.gmail.com', 587, 'gmail.com', 'wanmen.org@gmail.com', 'ithinkican', :login) do |smtp|
	  smtp.send_message(mail.to_s, 'wanmen.org@gmail.com', @user.email)
	end
  end
end
