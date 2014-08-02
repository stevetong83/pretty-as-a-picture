class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.create params message_params
    if @message.save
      redirect_to root_path, notice: "Thank you for contacting us! We get in touch with you as soon as possible."
    else
      render :new
    end
  end

  private

  def message_params
    params.require(:message).permit!
  end
end
