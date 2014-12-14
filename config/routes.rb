Rails.application.routes.draw do
  # You can have the root of your site routed with "root"
  root :to => 'general#index'

  #Post Routes
  post '/register' => 'members#create'
  post '/login' => 'session#create'
  post '/admin/addCarComplete' => 'admin#add_car_complete'
  post '/admin/changeCarComplete' => 'admin#change_car_complete'
  post '/admin/changeStockComplete' => 'admin#change_stock_complete'
  post '/admin/changeMemberComplete' => 'admin#change_member_complete'
  post '/admin/deleteCarComplete' => 'admin#delete_car_complete'
  post '/admin/deleteMemberComplete' => 'admin#delete_member_complete'
  post '/admin/login' => 'admin#login'

  ##Get Routes
  get '/admin' => 'admin#index'
  get '/admin/main' => 'admin#main'
  get '/admin/cars' => 'admin#cars'
  get '/admin/members' => 'admin#members'
  get '/admin/addCar'=>'admin#add_car'
  get '/admin/changeCar'=>'admin#change_car'
  get '/admin/changeMember'=>'admin#change_member'
  get '/admin/changeStock' => 'admin#change_stock'
  get '/admin/deleteCar' => 'admin#delete_car'
  get '/admin/deleteMember'=>'admin#delete_member'
  get '/admin/logout' => 'admin#destroy'
  get '/choose_car' , to:'general#choose_car'
  get '/logout' => 'session#destroy'
end
