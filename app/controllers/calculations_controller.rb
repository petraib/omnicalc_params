class CalculationsController < ApplicationController
   
   def flex_square
      
      @number = params["a_number"].to_i
      @squared_number =  @number**2
      
      render ("calculations/flex_square.html.erb") 
   end
   
    def flex_root
      
      @number = params["root_number"].to_i
      @squared_root =  Math.sqrt(@number)
      
      render ("calculations/flex_root.html.erb") 
   end
   
    def flex_payment
      
      @apr = params["apr"].to_f
      @years = params["years"].to_i
      @loan = params["loan"].to_i
      
      total = @loan * (1+@apr/10000)**@years
      r =  @apr/10000/12
      num = r * @loan 
      den = 1 - (1 + r)**(- @years*12) 
      @monthly_payment = num / den
    
    render ("calculations/flex_payment.html.erb") 
   end
   
    def flex_random
      
      @from = params["from"].to_i
      @to = params["to"].to_i
      range = @to - @from + 1
      @random_number = rand(range) + @from 
      
      render ("calculations/flex_random.html.erb") 
   end
end