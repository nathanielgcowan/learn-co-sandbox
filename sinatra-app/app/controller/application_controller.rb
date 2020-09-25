class ApplicationController < Sinatra::Base 
  
  configure do 
    set :publich_folder, 'public'
    set :views, 'app/views'
    enable :sessions ##do for cookies ##perfer firefox
    set :session_secret, "auth_demo_lv" ##do for cookies perfer firefox
  end 
  
        # get '/' do 
        #   session[:greeting]= "Hello World" #works as a hash
        #   response.set_cookie 'credit_amount', "100"
        #   #if they have a different webpage then you it is called session hijacking
        #   "Hello World!" #you want to put a cookie in the session, otheriwse the user can access this
        # end 
        
        # get '/remember' do 
        #   "You have #{resquest.cookies["credit_amount"]} left to sample"
        # end 
  
  helpers do 
    
    def logged_in?
      #otherwise 
      #return false or refirect '/login'
      #Is the user who they claim to be
      !!session[:email] ##this !! is a pattern in ruby for truthiness
    end 
    
    def login(email, password)
      #check if a user with this email actually exists
      # if so, set the session 
      # Is the user who they claim to be
      user= User.find_by(:email => email) 
      if user && user.authenticate(password) #if-statement assignment. so "if the user is assigned to the user object. then the user is assigned to then, labeled as true and set as an object."
          session[:email] = user.email
      else
        redirect "/login"
    end
      session[:email] = email
  end 
  
  def logout!
    session.clear
    ##Emailing them to let them know they logged out 
  end 
          ####I am on 33:05 on the video https://learn.co/tracks/full-stack-web-development-v6/sinatra/activerecord/video-review-authentication
end 