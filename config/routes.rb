Rails.application.routes.draw do
  get '/pro/:id' => 'application#show'
  get '/new' => 'application#new'
  get '/create' => 'application#create'
  get '/pro/:id/edit' => 'application#edit'
  get '/update/:id' => 'application#update'
  get '/pro/:id/destroy' => 'application#destroy'
  get '/pro' => 'application#index'
end