class Post < Activerecord::Base 
  belongs_to :user
  # class Car in singular (not Cars)
end