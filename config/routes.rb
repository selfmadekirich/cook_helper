Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #Measures
  get '/measures', to: 'measures#index'
  get '/measures/new', to: 'measures#new'
  post '/measures', to: 'measures#create'

  #Recipes
  get '/recipes', to: 'recipes#index'
  get '/recipes/new', to: 'recipes#new'
  get '/recipes/:id', to: 'recipes#show'
  put '/recipes/:id', to: 'recipes#update'
  post '/recipes', to: 'recipes#create'
  delete '/recipes/:id', to: 'recipes#delete'
  get '/recipes/:id/sharelink', to: 'recipes#sharelink'
  get '/recipes/:id/edit', to: 'recipes#edit'

end
