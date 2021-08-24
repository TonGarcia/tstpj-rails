Rails.application.routes.draw do
  resources :custos
  resources :funcionarios
  resources :especialidades
  get '/tst', to: 'tst#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
