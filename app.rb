require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get('/reversename/:name') {
    @name = params[:name].reverse
  }

  get('/square/:number') {
    @number = (params[:number].to_i ** 2).to_s
   
   
  }

  get('/say/:number/:phrase') {
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @newStr = ""
    @number.times { @newStr << "#{@phrase} " }
    @newStr
  }

  get('/say/:word1/:word2/:word3/:word4/:word5') {
    @str = params.values.join(" ").concat('.')
  }

  get('/:operation/:number1/:number2') {
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    case @operation
    when 'add' then (@num1 + @num2).to_s
    when 'subtract' then (@num1 - @num2).to_s
    when 'multiply' then (@num1 * @num2).to_s
    when 'divide' then (@num1 / @num2).to_s 
    end    

  }
####  
end



# Create a dynamic route at get '/:operation/:number1/:number2' that accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided. For example, going to /add/1/2 should render 3.