Rails.application.routes.draw do
  get 'form/index'
  get 'form/show'
  get 'aboutus/index'
  get 'news/index'
  get 'news/show'
  get 'home/index'
   root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
