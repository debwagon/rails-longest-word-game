Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :games

  get "new", to: "games#new"
  post "gorilla", to: "games#gorilla"
  get "score", to: "games#score"
  # root "games#home"
end
