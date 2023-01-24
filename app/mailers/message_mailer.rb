class MessageMailer < ApplicationMailer
  default to: -> { Admin.pluck(:email) },
          from: 'notifications@webdesigns.com'

  def confirmation_email
    @message = params[:message]
    mail(to: @message.email, bcc:Admin.pluck(:email), subject: 'Confirmation Email')
  end
end
