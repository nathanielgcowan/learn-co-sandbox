austin_swing_syndicate AustinSwingSyndicate

h3.slide-entry-title.entry-title a

div.slide-entry-excerpt.entry-content

div.slide-meta time.slide-meta-time.updated Dates.

name date description

bin -Provide a CLI --CLU must have go one level deep. where the user can make a choice and then det detailed ifnormation about heir choice. we will do, choose from a list of ands and receive detail

write a good README section
How to Build a CLI Gem

1 Plan you gem, imagine your interface 2. start with the project structure- goolge 3. start with the entry point - the file run 4. force that to build the CLI interface 5. stub out the interface. 6. start making things real 7. discover objects. 8. program. -a command line interface for daily deal, starting with

user types daily deal

show a list of products

PCH Digital Pulse Massage -$27 - Still available!
Dance Party --
Which product do you want to learn more about?

Plan

bin austin_swing_syndicate console setup lib austin_swing_syndicate announcements.rb cli.rb event.rb scraper.rb version.rb austin_swing_syndicate.rb

austin_swing_syndicate.gemspec

commit messages should be meaningful under 15 lines of code and 2 line commit is acceptable.

Build a CLI Application with External Data
Overview What to Expect from the Project Review Project Requirements Instructions Practicing for Success on Learn Resources Congrats! It’s time to work on your first project. In this lesson you're going to build a Ruby gem that provides a Command Line Interface (CLI) to an external data source. The CLI will be composed of an Object Oriented Ruby application. You'll use all you've learned about Ruby and CLI Applications in Ruby to complete this project.

Please note that while you will be writing code to scrape data or utilize an API from a public website, we are really looking for you to demonstrate your ability to write concise, easy-to-read Object-Oriented Ruby code (e.g. objects, not hashes; separation of concerns). The details of the regex's or the selectors you use to parse your scraped web pages are less important.

What to expect from the Project Review Project reviews are focused on preparing you for technical interviews. Treat project reviews as if they were technical interviews, in both attitude and technical presentation.

During your project review, be prepared to:

Explain your code from execution point to exit point. You will also be asked questions that test your knowledge of Ruby fundamentals. Use the best technical vocabulary you can. We’ll help you with the words you can’t remember or those you find difficult to pronounce. 20-25 minutes Refactor code. 10-20 minutes If any requirements are missing or if significant gaps in understanding are found, be prepared to do one or all of the following:

Extend the application with a new feature, more data, a different domain etc. Submit an improved version Meet again for another Project Review What won't happen:

You won't be yelled at, belittled, or scolded You won't be put on the spot without support There's nothing you can do to instantly fail or blow it Project Requirements Provide a CLI Your CLI application must provide access to data from a web page. The data provided must go at least one level deep. A "level" is where a user can make a choice and then get detailed information about their choice. Some examples are below: Movies opening soon - Enter your zip code and receive a list of movies and their details. Libraries near you - Enter your zip code and receive a list of libraries and their details. Programming meetups near you - Choose from an events list and receive details. News reader - List articles and read an article of your choosing. Your CLI application should not be too similiar to the Ruby final projects (Music Library CLI, Tic-Tac-Toe with AI, Student Scraper). Also, please refrain from using Kickstarter as that was used for the scraping 'code along'. Use good OO design patterns. You should be creating a collection of objects, not hashes, to store your data. Pro Tip: Avoid scraping data more than once per web page - utilize objects you have already created. It will speed up your program! World's Best Restaurants was built by a Learn student, is maintained by Flatiron School staff, meets these requirements, and is well coded. Take the time to clone, run, and look through the code in detail - it'll really help.

If you have time for an extra challenge, create a gem from your application. Want more? Try publishing your gem to RubyGems.org.

Instructions Watch this video walkthrough of building a basic CLI Gem called Daily Deal before you begin. Review the Student Scraper Project, which provides a good example of how scraping concerns can be separated into a distinct class.

Build your application. This is going to be different from labs you have done on Learn. Do not click Open IDE and create your application within the lesson files. Instead:

Watch this video on how to create and continue your project in the IDE In Browser Online Software Engineering: Use this IDE Sandbox. Full Stack Web Development V7: Use this IDE Sandbox. Full Stack Web Development V8 Use this IDE Sandbox. Do not close the Sandbox without completing the next step or your work will be lost.

After your repo is pushed up to Github, make sure you have a good README.md with a short description, install instructions, a contributors guide and a link to the license for your code (students usually use the MIT license). To continue working on your project, you'll need to delete extra project files in the Sandbox and clone your project down each time. This article includes instructions on how to clone down a repo. Make sure to commit early and commit often. Commit messages should be meaningful (clearly describe what you're doing in the commit) and accurate (there should be nothing in the commit that doesn't match the description in the commit message). Most of your commits should have under 15 lines of code and a 2 line commit is perfectly acceptable. Good rule of thumb is to commit every 3-7 mins of actual coding time. Use this checklist as you complete your project and submit when you are done. Documentation

While you're working on it, record a 30-minute coding session with your favorite screen capture tool. During the session, either think out loud or not. It's up to you. You don't need to submit the video, but we may ask for it at a later time. Submission

Submit this checklist after confirming all requirements are met. Prepare a video demo (narration helps!) describing how a user would interact with your working gem. Some common video recording tools used are Zoom, Quicktime, and Nimbus. After you create your demo, publish it on a service like YouTube or Google Drive. Write a blog post about the project and process. On Learn, submit links to the GitHub repository for your app, your video demo (not your 30-minute coding session), and your blog post each to the corresponding textbox in the right rail, and hit "I'm done" to wrap it up. Practicing for Success on Learn Be scrappy. If you make a mistake, correct yourself! We all make mistakes, I promise. Think on your feet. Feel free to look things up while you're pairing with us. You'll be asked to expand on concepts you implemented and you will be pushed to the edge of your knowledge. Explain the details. We're curious! Don’t worry if your code isn’t perfect the first time - focus on getting something working, then refactoring to improve it. Make no little plans. You're going to learn a ton. We will give pointers and show you ways to improve your code. This isn't telling you that your code is wrong, it's simply us teaching. Whatever you don't quite understand will be explained. Be proud of your project and your code, and show confidence in it. Radiate positivity. Present yourself and your project in the best way possible. Be open to feedback, both positive and constructive. Remember, the interviewer is a person too. Be nice to them! Work Together. Trust yourself. Trust us - our goal is to help you be successful in achieving your goals. We understand that this process can be stressful. We’re here to help you through. Pursue mastery. Use the best technical vocabulary you can. We’ll help you with the words you can’t remember, or if you’re unsure about how something is pronounced. Ask questions! Curiosity and willingness to learn are hugely valued in our industry. If you haven’t heard of something, that’s okay - use this opportunity to learn about it! Resources