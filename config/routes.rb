Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/", to: "cocktails#index"

  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:show, :new, :create]
  end
  resources :doses, only: [:destroy]

  # get "cocktails", to: "cocktails#index"
  # get "cocktails/new", to: "cocktails#new", as: "new_cocktail"
  # get "cocktails/:id", to: "cocktails#show", as: "cocktail" do
  #   resources :doses, only: [:new, :create]
  # end
  # post "cocktails", to: "cocktails#create"
end
