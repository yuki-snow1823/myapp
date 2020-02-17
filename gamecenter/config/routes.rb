Rails.application.routes.draw do
  root 'home#index'

  post 'games/answer' => 'games#open'

  get 'games/answer'
  get 'games/push'
  devise_for :users
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
