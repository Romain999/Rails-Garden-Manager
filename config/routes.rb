Rails.application.routes.draw do
  devise_for :users
  root to: 'gardens#index'

  resources :gardens, only: [:index, :show, :new, :create] do
    resources :plants, only: [:create]
  end
  resources :plants, only: [:destroy]

  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end

  mount StripeEvent::Engine, at: '/stripe-webhooks'

end
