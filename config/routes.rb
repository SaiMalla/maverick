Rails.application.routes.draw do
  


  #root "ticket_mailer#index"
  get "/send_mail" => "ticket_mailer#send_mail"
  

  
  resources :tag_users
  resources :ticket_transcations
  resources :tickets
  resources :tickets_imports, only: [:new, :create]
  resources :employees
  resources :roles
  resources :users
  resources :sources
  resources :caller_types
  resources :ages
  resources :product_skus
  resources :ticket_sub_statuses
  resources :ticket_sub_types
  resources :ticket_types
  resources :products
  resources :ticket_statuses
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
