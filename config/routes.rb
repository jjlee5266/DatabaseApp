Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  root 'application#index'
  resources :locations, only: [:index, :show, :create, :update, :destroy] do
    collection do
      get "branch_registration/:id" => "locations#registration", as: :branch_registration
      get "company_registration" => "locations#company_registration", as: :company_registration
      post '/company_create' => "locations#company_create", as: :company_create
    end
  end

  resources :inventories, except: [:new, :edit]
  resources :products, only: [:index, :show, :create, :update] do
    collection do
      get "search/:query" => "products#search", as: :search
    end
  end
  resources :histories, only: [:index,:create]

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
