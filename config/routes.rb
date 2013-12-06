Udjournal::Application.routes.draw do
  resources :photos
  post 'tinymce_assets', to: 'photos#create', as: :upload_photo

  resources :authors

  resources :peer_reviews

  resources :posters

  resources :papers

  resources :sabstracts

  resources :abstracts

  get 'sign_in', to: "sessions#new", as: :sign_in
  get 'sign_out', to: 'sessions#destroy', as: :sign_out
  match 'auth/:provider/callback', to: "sessions#create", via: [:get, :post]
  match 'auth/failure', to: "sessions#failure", via: [:get, :post]

  resources :articles

  # get "art", to: 'home#art', as: :art
  # get "business", to: 'home#business', as: :bus
  get "biology", to: 'home#biology', as: :bio
  get "chemistry", to: 'home#chemistry', as: :chem
  # get "computer_science", to: 'home#computer_science', as: :cs
  # get "classics", to: 'home#classics', as: :cla
  get "drama", to: 'home#drama', as: :dra
  get "economics", to: 'home#economics', as: :econ
  # get "education", to: 'home#education', as: :edu
  # get "english", to: 'home#english', as: :eng
  # get "history", to: 'home#history', as: :hist
  # get "human_sciences", to: 'home#human_sciences', as: :husc
  get "mathematics", to: 'home#mathematics', as: :math
  # get "ministry", to: 'home#ministry', as: :past
  # get "modern_languages", to: 'home#modern_languages', as: :modl
  get "physics", to: 'home#physics', as: :phys
  # get "politics", to: 'home#politics', as: :pol
  get "psychology", to: 'home#psychology', as: :psy
  # get "philosophy", to: 'home#philosophy', as: :phil
  # get "theology", to: 'home#theology', as: :theo
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

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
  #       article 'toggle'
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
  #     article 'toggle'
  #   end
  #   resources :articles, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
