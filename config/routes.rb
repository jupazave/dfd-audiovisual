Rails.application.routes.draw do

  root "diagrams#index"

  resources :diagrams do
    resources :items do
      post :update_row_order, on: :collection
    end
  end

end
