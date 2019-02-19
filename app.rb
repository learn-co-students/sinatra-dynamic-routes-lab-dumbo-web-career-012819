require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get('/reversename/:name') do
    params[:name].reverse
  end

  get('/square/:number') do
    (params[:number].to_i ** 2).to_s
  end

  get('/say/:number/:phrase') do
    output_doc = ''

    params[:number].to_i.times do
      output_doc << params[:phrase]
    end

    output_doc
  end

  get('/say/:word1/:word2/:word3/:word4/:word5') do
    output_doc = ""

    params.each do |key, value|
      output_doc << "#{value} "
    end

    output_doc.strip + "."
  end

  get('/:operation/:number1/:number2') do
    math_hash = {"add" => '+', "subtract" => '-', "multiply" => '*', "divide" => '/'}
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    @num1.send(math_hash[params[:operation]],@num2).to_s
  end

end
