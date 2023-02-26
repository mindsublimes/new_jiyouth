Rails.application.routes.draw do
  
  resources :political_leadership, only: []  do
    collection do
      get :provinces_and_districts
    end

    member do
      get :districts
      get :constituencies
    end
  end

  namespace :admin do
    get 'dashboard/index'
  end
  get 'contactus/index'
  devise_for :users
  
  namespace :admin do
    resources :members
    resources :uploaders
    resources :team_members
    resources :responsibilities
    resources :responsibility_sessions
  end
  
  resources :members do
    collection do
      get :districts
      get :area
      get :units
      get :check_cnic
    end
  end

  resources :team, only: [:index, :show] 

  get 'form/index'
  get 'form/show'
  get 'aboutus/index'
  get 'news/index'
  get 'news/show'
  get 'home/index'
  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
