Rails.application.routes.draw do
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root "doctors#index"
  resources :appointments
  resources :patients do
    resources :appointments, only: [:index, :show, :new, :create, :destroy]
  end
  resources :doctors do
    resources :appointments, only: [:index, :show, :new, :create, :destroy]
  end

  resources :patients do
    resources :notes
  end

  resources :doctors do
    resources :comments
  end

  resources :comments

  resources :conversations do
    resources :messages
  end

end
