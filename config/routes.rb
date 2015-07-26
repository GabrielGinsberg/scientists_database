Rails.application.routes.draw do
  get '/pro/:id' => 'application#show'
  get '/new_goods' => 'application#new'
  get '/create' =>'application#create'
  get '/form' => 'application#form'
end