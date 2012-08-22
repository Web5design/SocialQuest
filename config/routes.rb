SocialQuest::Application.routes.draw do
  devise_for :users

  root to: "static#index"

  resources :users
  resources :quests

end
