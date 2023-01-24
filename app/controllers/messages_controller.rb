class MessagesController < ApplicationController
  before_action :authenticate_admin!, except: [:new, :create]

  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      MessageMailer.with(message: @message).confirmation_email.deliver_later
      flash[:success] = "Your message has successfully been sent! 
      You should receive an email confirmation soon."
    else
      flash.now[:error] = "Please fix the errors."
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @message = Message.find(params[:id])
  end

  private
  def message_params
    params.require(:message).permit(:name, :email, :description)
  end
end
