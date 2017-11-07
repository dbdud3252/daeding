Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/" => "home#home"
  get "/project/view" => "project#view"
  get "/project/edit" => "project#edit"
  get "/project/create" => "project#create"
end
