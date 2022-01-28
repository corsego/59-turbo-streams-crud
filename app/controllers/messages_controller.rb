class MessagesController < ApplicationController
  before_action :set_message, only: %i[ show edit update destroy ]

  def index
    @messages = Message.recent
    @message = Message.new
  end

  def show; end

  def new
    @message = Message.new
  end

  def edit; end

  def create
    @message = Message.new(message_params)

    respond_to do |format|
      if @message.save
        render_successfully_flash(:create)
        format.html { redirect_to messages_path }
        # format.html { redirect_to messages_path, notice: "Message was successfully created." }
      else
        render_error_flash
        format.turbo_stream
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @message.update(message_params)
        render_successfully_flash(:update)
        format.html { redirect_to messages_path }
        # format.html { redirect_to messages_path, notice: "Message was successfully updated." }
      else
        render_error_flash
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @message.destroy

    respond_to do |format|
      format.html { redirect_to messages_url }
    end
  end

  private

    def set_message
      @message = Message.find(params[:id])
    end

    def message_params
      params.require(:message).permit(:body)
    end

    def render_error_flash
      flash.now[:error] = @message.errors.full_messages.join(', ')
      render_flash
    end

    def render_successfully_flash(type)
      action_name = type == :create ? 'created' : 'updated'
      flash.now[:notice] = "Message was successfully #{action_name}!"
      render_flash
    end
end
