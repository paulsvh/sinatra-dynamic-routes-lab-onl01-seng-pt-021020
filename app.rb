require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    name = params[:name]
    "#{name.reverse}"
  end

  get '/square/:number' do
    num = params[:number].to_i
    squared = num ** 2
    "#{squared}"
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    phrase = params[:phrase]
    "#{phrase * num}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    output = ""
    case params[:operation]
    when "add"
      output = (num1 + num2).to_s
    when "subtract"
      output = (num1 - num2).to_s
    when "multiply"
      output = (num1 * num2).to_s
    when "divide"
      output = (num1 / num2).to_s
    end
  end

end