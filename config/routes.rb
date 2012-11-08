Flowshow::Application.routes.draw do
  devise_for :user do
    match '/user/sign_in/twitter' => Devise::Twitter::Rack::Signin
    match '/user/connect/twitter' => Devise::Twitter::Rack::Connect
  end

  resources :softwares

  devise_for :users

  get "profile/main"

  get "home/index"

  # The root of your site routed with "root"
  root :to => 'home#index'

  # Redirect the defult login path of devise
  devise_scope :user do
    get "/login" => "profile#main"
  end

  namespace :user do
    root :to => "welcome#index"
  end

  match 'profile' => 'profile#main'

  match 'user' => 'profile#main'

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # See how all your routes lay out with "rake routes"
end
