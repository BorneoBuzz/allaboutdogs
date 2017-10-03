# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
    #def contact_form
    #    UserMailer.contact_form("joymajanil@gmail.com", "Joyce", "HELLO WORLD!")
    #end
    
    default from: "joymajanil@gmail.com"
    
    def contact_form(email, name, message)
        @message = message
        mail(from: email,
            to: 'joymajanil@gmail.com',
            subject: "A new contact form message from #{name}")
    end

end
