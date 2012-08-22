SocialQuest::Application.routes.draw do
  devise_for :users

  root to: "static#index"
  
  scope "v1" do
    scope :api, module: :api do
      resources :users
      resources :quests
    end
  end
end
