Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, defaults: { format: :json }, only: [:show, :index, :create]
    end
  end
end
