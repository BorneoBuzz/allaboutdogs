class UserMailer < ApplicationMailer
    default from: "joymajanil@gmail.com"
    
    def contact_form(email, name, message)
        @message = message
        mail(from: email,
            to: 'joymajanil@gmail.com',
            subject: "A new contact form message from #{name}")
    end
end



