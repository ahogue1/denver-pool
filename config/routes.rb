Rails.application.routes.draw do
  get 'about', to: 'pages#about', as: :about
  get 'contact', to: 'pages#contact', as: :contact

  root to: 'pages#home'
  resources :contacts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
