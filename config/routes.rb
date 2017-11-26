Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/" => "home#home"
  get "/project/view" => "project#view"
  get "/project/edit" => "project#edit"
  get "/project/create" => "project#create"
  post "/project/create_1" => "project#new_create_1"
  get "/project/create_1/new" => "project#create_1"
  get "/project/create_2/new" => "project#create_2"
  post "/project/create_2" => "project#new_create_2"
  get "/project/create_3/new" => "project#create_3"
  post "/project/create_3" => "project#new_create_3"
end
