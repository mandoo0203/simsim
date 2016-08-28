Rails.application.routes.draw do
  get 'chat/index'

  get 'chat/new'
  get 'chat/learn'
  get 'chat/create'
  root 'chat#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
