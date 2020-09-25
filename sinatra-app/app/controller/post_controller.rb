class PostController < ApplicationController 
  
  get '/posts' do 
    "This is a list of publicllly available posts"
  end 
  
  get '/post/new' do 
          #Checking if they are logged in #this is what they can't do unless they are logged in # if !session[:email] #"if not email---redirect" ## (this is not semantic we put this in the ApplicationController)
    if !logged_in?  
      redirect "/login" #Redirecting if they are not
    else
      "A new post form" #Rendering if they are
    end
  end 
  
  get '/post/:id/edit' do 
        ##Here is another form that needs protection #Checking if they are logged in #this is what they can't do unless they are logged in # if !session[:email] #"if not email---redirect" ## (this is not semantic we put this in the ApplicationController)
    if !logged_in?  
      redirect "/login" #Redirecting if they are not
    else
      
      # How do I find the post that only the author user 
      if post = current_user.posts.find(params[:id])
          "An edit post form #{current_user.id} is editing #{post.id}" #Rendering if they are
      else
        redirect '/posts'
      end 
      #we cannot use include because it does not find all of our post
      #Alternatively, we can also use find by method
    end
  end 
end 
    