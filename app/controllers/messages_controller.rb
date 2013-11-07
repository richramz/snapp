class MessagesController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :edit, :create, :update, :destroy]
  
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @message.user = current_user

    if @message.save
      redirect_to @message
    else
      render 'new'
    end
  end

  def inbox
    @messages = message.all
  end
  
  def show
    @message = message.find(params[:id])
  end
  
  def edit
    @message = message.find(params[:id])
  end
  
  def update
    @message = message.find(params[:id])

    if @message.update(message_params)
      redirect_to @message
    else
      render 'edit'
    end
  end
  
  def index
    @messages = message.order("created_at desc").limit(5)
  end
  
  def destroy
    @message = message.find(params[:id])
    @message.destroy
    redirect_to messages_path
  end
  
  private
    def message_params
      params.require(:message).permit(:sub  ject, :text)
    end
end
