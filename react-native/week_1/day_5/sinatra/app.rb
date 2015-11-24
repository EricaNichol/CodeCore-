require "sinatra"
require "sinatra/reloader" if development?
require "faker"
#Addin the Sinatra reloader will enable us to change code and see
#the effects of it right away without having to restart the server.
# www.sinatrarb.com/contrib/reloader.html

#When we recieve a request that has a GET HTTP request
#with a URL of "/"
#Sinatra will execute the code in here
  #"Hello World"

  #this will look for a template called "index.erb" inside the folder "views", it will use the template to generate HTML code and send it back as a response the client
  # This will use the views/application.erb as a layout

#this allows using the sessions feature in Sinatra
enable :sessions


  helpers do
    def protected!
      return if authorized?
      headers['WWW-Authenticate'] = 'Basic realm="Restricted Area"'
      halt 401, "Not authorized\n"
    end

    def authorized?
      @auth ||=  Rack::Auth::Basic::Request.new(request.env)
      @auth.provided? and @auth.basic? and @auth.credentials and @auth.credentials == ['admin', 'admin']
    end
  end

get "/" do
  erb(:index, {layout: :application})
end

get "/contact" do
  erb(:contact, {layout: :application})
end

get "/temperature" do
  erb(:temperature, {layout: :application})
end

get "/survey" do
  erb(:survey, {layout: :application})
end

post "/submit_contact" do
  name = params[:full_name]
  "Thanks for Contacting us."
end

post "/convert_temp" do
  temperature_in_c = params[:temp]
  @temperature_in_f = temperature_in_c.to_f * 9 / 5 + 32
  erb(:temperature, {layout: :application})
end

post "/survey" do
  #{"work-best"=>"deadlines", "consider-yourself"=>"rational", "interested-in"=>"ideas"}

  work_best         = params["work-best"]
  interested_in     = params["interested-in"]
  consider_yourself = params["consider-yourself"]

  # With deadline \ Rational | Ideas > Rational

  if work_best = "with-deadlines" && interested_in == "ideas" && consider_yourself == "rational"
    @type = "rational"
  else
    @type = "I don't know"
  end
   erb(:survey_results, {layout: :application})
 end

get "/company_names" do
  erb(:company_names, {layout: :application})
end

post "/company_names" do
  @company = Faker::Company.bs
  erb(:company_names, {layout: :application}) #runs it afterwards the gem
end
# params is Hash given to us by Sinatra that contains the parsed values
# submitted by the form

get "/winner" do
 erb(:winner, {layout: :application})
end

post "/get_winner" do
  @winner = params["winner"].split(", ").sample
  session[:the_last_winner] = @winner
  erb(:winner, {layout: :application})
end

get "/hello" do
  "Hey There"
end

get "/test_protected" do
  protected!
  "You're in"
end


=begin  “submit” is at the end
params is a hash object that is given to us by sinatra that contains the key / value pairs from the parameters received from the client
if its a web form the key matches the “name” HTML attribute, the slue will be whatever the user entered in the input field
=end
