Rails.application.routes.draw do
  get 'test_index' => "test#test_index"

  root 'main#index'
  
  get 'exp_index' => "exp_board#exp_index"
  post 'exp_board/exp_create'
  get 'exp_board/exp_new'
  get 'exp_board/exp_edit'
  get 'exp_board/exp_destroy'
  
  get 'magick_index' => "magick#magick_index"
  
  get 'cafe_index' => "cafe#cafe_index"
  post 'cafe_write' => "cafe#cafe_write"
  post 'reply_write' => "cafe#reply_write"

  get 'vr_main' => "vr#vr_main"
  # get '/',  to: redirect('/422.html')
  get 'yahoo' => "fourth#board"
  post 'write' => "fourth#write"
  
  get 'index' => "main#index"
  get 'anything' => "main#anything"
  get 'anything2' => "main#anything2"
  get 'apple' => "main#apple"
  get 'contact' => "main#contact"
  get 'second' => "main#second"
  get 'subscribe' => "main#subscribe"
  get 'tree' => "main#tree"
  
  get 'fifth_index' => "fifth#fifth_index"
  post 'fifth_write' => "fifth#fifth_write"
  get 'fifth_list' => "fifth#fifth_list"
  get 'destroy/:post_id' => "fifth#destroy" 
  
  get 'face_index' => "face#face_index"
  post 'face_photo' => "face#face_photo"
  get 'face/face_index'
  
  get 'vr_index' => "vr#vr_index"
  get 'vr_anime' => "vr#vr_anime"
  get 'vr_360' => "vr#vr_360"
  get 'vr_aframe' => "vr#vr_aframe"
  get 'vr_curved' => "vr#vr_curved"

  get 'try_main' => "try#try_main"
  get 'try_index' => "try#try_index"
  get 'try_drag' => "try#try_drag"
  get 'try_copy' => "try#try_copy"
  get 'try_data' => "try#try_data"
  get 'try_data1' => "try#try_data1"
  get 'try_drop' => "try#try_drop"
  
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
