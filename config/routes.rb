Rails.application.routes.draw do
  
  get("/flexible/square/:a_number", { :controller => "calculations", :action => "flex_square"})
  get("/flexible/square_root/:root_number", { :controller => "calculations", :action => "flex_root"})
  get("/flexible/payment/:apr/:years/:loan", { :controller => "calculations", :action => "flex_payment"})
  get("/flexible/random/:from/:to", { :controller => "calculations", :action => "flex_random"})


  get("/square/new", { :controller => "calculations", :action => "square_form"})
  get("/square/results", { :controller => "calculations", :action => "process_square"})
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end
