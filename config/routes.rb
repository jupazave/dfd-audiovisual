Rails.application.routes.draw do

  root "diagrams#index"

  namespace :creator do

    resources :diagrams do
      resources :items
    end

  end

end
