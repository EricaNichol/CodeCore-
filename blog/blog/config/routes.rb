Rails.application.routes.draw do

  match "/delayed_job" => DelayedJobWeb, :anchor => false, via: [:get, :post]

  resources :users, only: [:new, :create] do
    collection do
      get :edit
      get :update
    end
  end

  resources :sessions, only: [:new, :create, :destroy] do
      delete :destroy, on: :collection
  end

  resources :posts do
    resources :comments
    resources :likes, only: [:create, :destroy]
    resources :favorites, only: [:create, :destroy]
    resources :votes, only: [:create, :destroy, :update]
  end

  resources :homes, only: [:index]
  resources :abouts, only: [:index]
end
