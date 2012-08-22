SocialQuest::Application.routes.draw do
  root to: "static#index"
  
  scope "v1" do
    scope :api, module: :api do
      resources :users
      resources :quests
    end
  end
end
