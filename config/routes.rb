Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'home#index'

  #auth
  get '/auth' , to: 'auth#new'
  post '/auth' , to:'auth#create'
  delete '/auth' ,to:'auth#destroy'

  get '/users' , to:'users#new'
  post '/users', to:'users#create'


  #Measures
  get '/measures/:amount', to: 'measures#index'
  get '/measures/new', to: 'measures#new'
  post '/measures', to: 'measures#create'

  #Recipes
  get '/recipes', to: 'recipes#index'
  get '/recipes/new', to: 'recipes#new'
  get '/recipes/:id', to: 'recipes#show'
  patch '/recipes', to: 'recipes#update'
  post '/recipes', to: 'recipes#create'
  delete '/recipes/:id', to: 'recipes#delete'
  get '/recipes/:id/edit', to: 'recipes#edit'

end
