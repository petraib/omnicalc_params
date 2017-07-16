Rails.application.routes.draw do
  
  get("/flexible/square/:a_number", { :controller => "calculations", :action => "flex_square"})
  get("/flexible/square_root/:root_number", { :controller => "calculations", :action => "flex_root"})
  get("/flexible/payment/:apr/:years/:loan", { :controller => "calculations", :action => "flex_payment"})
  get("/flexible/random/:from/:to", { :controller => "calculations", :action => "flex_random"})


  get("/square/new", { :controller => "calculations", :action => "square_form"})
  get("/square/results", { :controller => "calculations", :action => "process_square"})
  
  get("/square_root/new", { :controller => "calculations", :action => "square_root_form"})
  get("/square_root/results", { :controller => "calculations", :action => "process_square_root"})
  
  get("/payment/new", { :controller => "calculations", :action => "payment_form"})
  get("/payment/results", { :controller => "calculations", :action => "process_payment"})
  
  get("/random/new", { :controller => "calculations", :action => "random_form"})
  get("/random/results", { :controller => "calculations", :action => "process_random"})
  
  get("/word_count/new", { :controller => "calculations", :action => "word_count_form"})
  get("/word_count/results", { :controller => "calculations", :action => "process_word_count"})
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end
