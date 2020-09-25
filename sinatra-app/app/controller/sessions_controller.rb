class SessionsController < ApplicationController 
  
  get '/login' do 
    erb :"sessions/login.html"
  end
  
  
  post '/sessions' do
    #login in a user with this email
    login(params[:email], params[:password])
    redirect '/posts'
  end
  
  get '/logout' do 
      #all we do to logout is clear the session 
    logout!
    redirect '/posts'
  end
  
end 