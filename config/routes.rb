Rails.application.routes.draw do


  devise_for :users
  resources :posts do
    member do
      put "like", to: "posts#upvote"
      put "unlike", to:"posts#downvote"
    end
  resources :users do
    member do
      get :following, :followers
    end
  end
  end

  resources :users
  root 'posts#index'



  resources :users, :only => [:index, :show] do
    resources :follows, :only => [:create, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
