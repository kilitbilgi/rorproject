Rails.application.routes.draw do
  # You can have the root of your site routed with "root"
  root :to => 'general#index'

  ##Get Routes
  get '/admin' => 'admin#index'
  get '/admin/main' => 'admin#main'
  get '/admin/cars' => 'admin#cars'
  get '/admin/rentals'=>'admin#rentals'
  get '/admin/options'=>'admin#options'
  get '/admin/members' => 'admin#members'
  get '/admin/addCar'=>'admin#add_car'
  get '/admin/changeCar'=>'admin#change_car'
  get '/admin/changeMember'=>'admin#change_member'
  get '/admin/changeStock' => 'admin#change_stock'
  get '/admin/deleteCar' => 'admin#delete_car'
  get '/admin/deleteMember'=>'admin#delete_member'
  get '/admin/logout' => 'admin#destroy'
  get '/logout' => 'session#destroy'
  get '/choose_car' , to:'cars#choose_car_get'

  #Post Routes
  post '/register' => 'members#create'
  post '/login' => 'session#create'
  post '/admin/addCarComplete' => 'admin#add_car_complete'
  post '/admin/changeCarComplete' => 'admin#change_car_complete'
  post '/admin/changeStockComplete' => 'admin#change_stock_complete'
  post '/admin/changeMemberComplete' => 'admin#change_member_complete'
  post '/admin/deleteCarComplete' => 'admin#delete_car_complete'
  post '/admin/deleteMemberComplete' => 'admin#delete_member_complete'
  post '/admin/optionsComplete' => 'admin#options_complete'
  post '/choose_car' , to:'cars#choose_car'
  post '/review_book' , to:'rentals#review_book'
  post '/cars/pagination' => 'cars#pagination'
  #post '/chooseCar' => 'cars#choose_car'
  post '/admin/login' => 'admin#login'
  post '/complete_reservation' => 'reservation#complete_reservation'

end
