1. I need users 
  URLS 
    GET /signup #=> see a form 
    POST /users #=> to actually create the user 
  database 
    I need a users table to sstore their email and password

2. I need to give users passwords 
3. Then I need to make sure that I can find a user with thier actaull password. 
4. Change my login system to use their email and password to authenicate them
5. 
#rake db:create_migration NAME=create_users