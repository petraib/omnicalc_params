class CalculationsController < ApplicationController
   
   def flex_square
      
      @number = params["a_number"].to_i
      @squared_number =  @number**2
      
      render ("calculations/flex_square.html.erb") 
   end
   
   def square_form
       render ("calculations/square_form.html.erb") 
   end
   
   def process_square
       
      @number = params["the_user_number"].to_i
      @squared_number =  @number**2
      
       render ("calculations/square_results.html.erb") 
   end
   
   
    def flex_root
      
      @number = params["root_number"].to_i
      @squared_root =  Math.sqrt(@number)
      
      render ("calculations/flex_root.html.erb") 
   end
   
   def square_root_form
       render ("calculations/square_root_form.html.erb") 
   end
   
   def process_square_root
       
      @number = params["the_user_number"].to_i
      @squared_number = Math.sqrt(@number)
      
       render ("calculations/square_root_results.html.erb") 
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
   
   def payment_form
       render ("calculations/payment_form.html.erb") 
   end
   
   def process_payment
       
      
      @apr = params["apr"].to_f
      @years = params["years"].to_i
      @loan = params["loan"].to_i
      
      total = @loan * (1+@apr/10000)**@years
      r =  @apr/100/12
      num = r * @loan 
      den = 1 - (1 + r)**(- @years*12) 
      @monthly_payment = num / den
      
       render ("calculations/payment_results.html.erb") 
   end
   
    def flex_random
      
       @from = params["from"].to_f
      @to = params["to"].to_f
      range = @to - @from + 1
      @random_number = rand()* range + @from 
      
      render ("calculations/flex_random.html.erb") 
   end


 def random_form
       render ("calculations/random_form.html.erb") 
   end
   
   def process_random
       
      @from = params["from"].to_f
      @to = params["to"].to_f
      range = @to - @from + 1
      @random_number = rand()* range + @from 
      
       render ("calculations/random_results.html.erb") 
   end
   
   def word_count_form
       render ("calculations/word_count_form.html.erb") 
   end
   
   def process_word_count
       
        @text = params["text"]
        @special_word = params["special_word"]
        @word_count = @text.split.count
        @character_count_with_spaces = @text.length
        @character_count_without_spaces = @text.length - (@text.count " ")
        @downcasetext = @text.downcase
        
        @occurrences =  @downcasetext.scan( @special_word + " ").count
    
       render ("calculations/word_count_results.html.erb") 
   end
   
   
end