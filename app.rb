require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

get '/goodbye' do
  "Goodbye World!"
end

get "/goodbye/:name" do
  @user_name = params[:name]
  "Goodbye, #{@user_name}."
end

get '/multiply/:number1/:number2' do
    @nums_multiplied = params[:number1].to_i * params[:number2].to_i
    "#{@nums_multiplied}"
end

  # Code your final two routes here:

end
