Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :quotes do
    resources :line_item_dates, except: [:index, :show] do
      resources :line_items, except: [:index, :show]
    end
  end
end
