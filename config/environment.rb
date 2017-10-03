# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!


ActionMailer::Base.smtp_settings ={
    address: 'smtp.sendgrid.net',
    port: '587',
    authentication: :plain,
    user_name: ENV['SENDGRID USERNAME'],
    password: ENV['SENDGRID PASSWORD'],
    domain: 'heroku.com',
    enable_starttls_auto: true
}

ActionMailer::Base.delivery_method = :smtp

   #:port           => ENV["MAILGUN_SMTP_PORT"], 
    #:address        => ENV["MAILGUN_SMTP_SERVER"],
    #:user_name      => ENV["MAILGUN_SMTP_LOGIN"], 
    #:password       => ENV["MAILGUN_SMTP_PASSWORD"],
    #:domain         => 'allaboutdogs.herokuapp.com',
    #:authentication => :plain,
    