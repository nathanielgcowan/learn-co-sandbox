class User < ActiveRecord::Base 
  has_secure_password
  
  has_many :posts
end 
#rake db:migrate
#wheneever you make a new model and migration you waht to go into your console and know you can use it. Look at 54:00 for reference.
#their are only three things you can do in Ruby. Create object, call methods, and set variabless and the has_sucrue_password above seems to be none of them but it is actually just calling methods from ActiveRecord. ex. u.pass= "hello" and u.email = "hello@examplel.com", then u = User.find_by