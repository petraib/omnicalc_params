class CalculationsController < ApplicationController
   
   def flex_square
      
      @number = params["a_number"].to_i
      @squared_number =  @number**2
      
      render ("calculations/flex_square.html.erb") 
   end
end