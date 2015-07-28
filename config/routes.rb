Rails.application.routes.draw do
  
  # CREATE
  get '/new' => 'user#new'
  get '/create' => 'user#create'
  
  # READ
  get '/pro/:id' => 'user#show'
  get '/pro_index' => 'user#index'
  
  # UPDATE
  get '/pro/:id/edit' => 'user#edit'
  get '/update/:id' => 'user#update'
  
  #DESTROY
  get '/pro/:id/destroy' => 'user#destroy'
  
end