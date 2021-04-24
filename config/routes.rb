Rails.application.routes.draw do

  root 'post#TOP'

  get 'user/new', to:"user#new" , as:"user_new"
  post "user/create" , to:"user#create" , as:"signin"
  get "user/show/:id" , to:"user#show" , as:"user_show"
  get "/login" , to:"session#login" , as:"login"
  post "/logedin" , to:"session#create" , as:"logedin"
  delete "/logout" , to:"session#logout" , as:"logout"

  get '/auth/:provider/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  get 'post/new', to:"post#new" , as:"post_new"
  post "post/create" , to:"post#create" , as:"post_create"
  get 'post/show/:id', to:"post#show" , as:"post_show"
  get "/edit/:id", to:"post#edit", as:"edit"
  patch "/update/:id" , to:"post#update" , as:"update"
  delete "delete/:id" , to:"post#delete" , as:"delete"
  get 'post_search', to:"post#search" , as:"post_search"
  get 'post/category/:id', to:"post#category" , as:"post_category"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
                                                                                      