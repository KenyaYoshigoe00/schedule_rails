Rails.application.routes.draw do
  get 'contents/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :contents
end
