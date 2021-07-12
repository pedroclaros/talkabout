Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "myprofile", to: "pages#myprofile"

  resources :talks do 
    resources :appointments, only: [:create, :new]
    resources :favorites, only: [:create, :new]
  end

  resources :appointments, except: [:create, :new]
  resources :favorites, except: [:create, :new]
end
