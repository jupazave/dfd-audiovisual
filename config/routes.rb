Rails.application.routes.draw do

  root "diagrams#index"

  resources :diagrams do
    resources :items
  end

end
