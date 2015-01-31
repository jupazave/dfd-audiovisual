Rails.application.routes.draw do

  get 'flowcharts/:id' => "welcome#diagram"

  root "welcome#index"

  resources :diagrams do
    resources :items do
      post :update_row_order, on: :collection
    end
  end

end
