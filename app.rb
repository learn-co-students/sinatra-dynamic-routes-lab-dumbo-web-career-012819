require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    tmp = params[:name]
    @name = tmp.reverse
    "#{@name}"
  end
  get "/square/:number" do
    tmp = params[:number].to_i
    @number = tmp ** 2
    "#{@number}"
  end
  get "/say/:number/:phrase" do
    output = " "

    params[:number].to_i.times do
      output += "#{params[:phrase]} "
    end
    output
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."

  end

  get '/:operation/:number1/:number2' do

    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    if params[:operation] == "add"
      answer = num1 + num2
    elsif params[:operation] == "subtract"
      answer = num1 - num2
    elsif params[:operation] == "multiply"
      answer = num1 * num2
    elsif params[:operation] == "divide"
      answer = num1 / num2
    else

      answer = "Don't know, i just don't know"


    end
    answer.to_s

  end
end
