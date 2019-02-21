require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reversed = params[:name].reverse
    "#{@reversed}"
  end

  get '/square/:number' do
    @squared = params[:number].to_i ** 2
    "#{@squared}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @sentence = ""

    while @num > 0 do
      @sentence += "#{@phrase} "
      @num -= 1
    end

    @sentence
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @first_sentence = []

    params.each {|k, v| @first_sentence << v}
    @first_sentence.join(" ") + "."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @operation = params[:operation]

    if @operation == "add"
      return "#{@num1 + @num2}"
    elsif @operation == "subtract"
      return "#{@num1 - @num2}"
    elsif @operation == "multiply"
      return "#{@num1 * @num2}"
    else
      return "#{@num1 / @num2}"
    end
  end

end
