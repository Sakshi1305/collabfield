Rails.application.routes.draw do
  get 'posts/index'
  # devise_for :users
  devise_for :users, controllers: { registrations: 'registrations' }
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'signup', to: 'devise/registrations#new'
  end
  root 'pages#index'

  resources :posts do
    collection do
      get 'hobby'
      get 'study'
      get 'team'
    end
  end

  namespace :private do
    resources :conversations, only: [:create] do
      member do
        post :close
        post :open
      end
    end
    resources :messages, only: %i[index create]
  end

  resources :contacts, only: %i[create update destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
