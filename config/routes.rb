Rails.application.routes.draw do
  root "messages#index"
  resources :messages do
    member do
      post :edit
    end
  end
end
