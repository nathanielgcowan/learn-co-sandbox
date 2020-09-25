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


ActiveRecord comes with a great way to secure passwords.
for more information look at ActiveRecord online.

# rake db:create migration name add_passwords_to_users
rake db:migrate
#

1. Build my user registration process (signup form and dignup creation)
2. give posts to user 
3. only let them edit posts they made 
4. #rake db:create_migration NAME=create_posts
5. 
rake db:migrate
