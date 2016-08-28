class ChatController < ApplicationController
  def index
  end

  def new
    @ask = params[:ask]
  end

  def create
    Chat.create(is_man: true, content: params[:content])
    dic = Dictionary.where(ask: params[:content]).sample
    if dic.nil?
      redirect_to "/chat/new?ask=#{URI.encode(params[:content])}"
    else
      Chat.create(is_man: false, content: dic.answer)
      redirect_to '/chat/index'
    end
  end

  def learn
    Dictionary.create(ask: params[:ask], answer: params[:answer])
    redirect_to '/chat/index'
  end
end
