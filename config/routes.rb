Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/measures', to: 'measures#index'
  get '/measures/new', to: 'measures#new'



end
