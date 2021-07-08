Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "myprofile", to: "pages#myprofile"

  resources :talks do 
    resources :appointments
    resources :favorites, only: :create
  end
end

