Rails.application.routes.draw do
  # get '/',  to: redirect('/422.html')
  get 'yahoo' => "fourth#board"
  get 'index' => "main#index"
  get 'anything' => "main#anything"
  get 'anything2' => "main#anything2"
  get 'apple' => "main#apple"
  get 'contact' => "main#contact"
  get 'second' => "main#second"
  get 'subscribe' => "main#subscribe"
  get 'tree' => "main#tree"
  post 'write' => "fourth#write"
  get 'fifth_index' => "fifth#fifth_index"
  post 'fifth_write' => "fifth#fifth_write"
  get 'fifth_list' => "fifth#fifth_list"
  get 'destroy/:post_id' => "fifth#destroy"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  
  # You can have the root of your site routed with "root"


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
