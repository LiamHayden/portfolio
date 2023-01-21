class MessageMailer < ApplicationMailer
  default to: -> { Admin.pluck(:email) },
          from: 'notification@webdesigns.com'

  def confirmation_email
    @message = params[:message]
    mail(to: @message.email, subject: 'Confirmation Email')
  end
end
