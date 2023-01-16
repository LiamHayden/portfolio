class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @message = Message.find(params[:id])
  end

  private
  def message_params
    params.permit(:name, :email, :description)
  end
end
