require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @user_name = params[:name].reverse!
    "#{@user_name}"
  end

  get "/square/:number" do
    @squared_number = params[:number].to_i * params[:number].to_i
    "#{@squared_number}"
  end

  get "/say/:number/:phrase" do
      params[:phrase] * params[:number].to_i
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    if params[:operation] == "add"
        @adding = params[:number1].to_i + params[:number2].to_i
          "#{@adding}"
      elsif params[:operation] == "subtract"
        @subtracting = params[:number2].to_i - params[:number1].to_i
        "#{@subtracting}"
      elsif params[:operation] == "multiply"
          @multiplying = params[:number1].to_i * params[:number2].to_i
          "#{@multiplying}"
      elsif params[:operation] == "divide"
        @diving = params[:number1].to_i / params[:number2].to_i
        "#{@diving}"
    end
  end
end
