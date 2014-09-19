class Notifier < ActionMailer::Base

  def contact_form message
    @name = message.name
    @email = message.email
    @message = message.message

    mail(to: 'stevetong83@hotmail.com, marciatong13@yahoo.com', from: @email, subject: 'Pretty As A Picture Scarves Inquiry')
  end

end
