Rails.application.routes.draw do

  resources :pages
  mount Bamboo::Engine => "/bamboo"
end
