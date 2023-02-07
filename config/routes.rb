Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
    resources :members
  end

  get 'team/index'
  get 'team/show'
  get 'form/index'
  get 'form/show'
  get 'aboutus/index'
  get 'news/index'
  get 'news/show'
  get 'home/index'
   root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
