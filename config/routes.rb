Rails.application.routes.draw do
  root 'index#view'
  devise_for :pets, controllers: { registrations: 'registrations' }

  get '/evelyn' => redirect("http://evelyn.pet")

  resources :noises
  resources :pettings
  resources :pages, path: '', only: [:show, :update], param: :url
  resources :pages, param: :url
  post '/:url/pet' => 'pages#pet'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end