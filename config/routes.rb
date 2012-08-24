SocialQuest::Application.routes.draw do
  resources :skills

  devise_for :users

  root to: "static#index"

  resources :users
  resources :quests

end
