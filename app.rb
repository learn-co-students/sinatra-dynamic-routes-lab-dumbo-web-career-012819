require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
      @a_name = params[:name]
      "#{@a_name}".reverse
  end

  get "/square/:number" do
      @squared_numba = params[:number].to_i * params[:number].to_i
      "#{@squared_numba}"
  end

  get "/say/:number/:phrase" do
    num_phrases = ""
    (params[:number].to_i).times do
          num_phrases += "#{params[:phrase]}\n"
      end
      num_phrases
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
      @wordd1 = params[:word1]
      @wordd2 = params[:word2]
      @wordd3 = params[:word3]
      @wordd4 = params[:word4]
      @wordd5 = params[:word5]
      "#{@wordd1} #{@wordd2} #{@wordd3} #{@wordd4} #{@wordd5}."
  end

  get '/:operation/:number1/:number2' do
      number1 = params[:number1].to_i
      number2 = params[:number2].to_i
      if params[:operation] == "add"
           solution = number1 + number2
      elsif params[:operation] == "divide"
          solution = number1 / number2
      elsif params[:operation] == "multiply"
          solution = number1 * number2
      elsif params[:operation] == "subtract"
          solution =number1 - number2
      end
      solution.to_s
  end
end
