#DAILY NOTES
##Notes from 2/06
Here are more react tutorials I'm saving just in case I need them for future reference
[https://www.airpair.com/reactjs/posts/reactjs-a-guide-for-rails-developers]
[https://www.pluralsight.com/guides/ruby-ruby-on-rails/building-a-crud-interface-with-react-and-ruby-on-rails]
[https://hackhands.com/react-rails-tutorial/]
[http://andrewhfarmer.com/getting-started-tutorials/]

##Notes from 2/03
Bryan helped me with a PR earlier this week to sort out the mess I made out of my strong params. 
Here are two tutorials I'm reading to incorporate React into the class attendance page:
[https://rlafranchi.github.io/2016/04/11/reactjs-and-rails/]
[https://tylermcginnis.com/reactjs-tutorial-a-comprehensive-guide-to-building-apps-with-react/]

I need to research sorting/grouping/vetting submissions by date. So far I was able to make a string out of the Time.now object, which I'm thinking I can match to a spliced array.to_s out of the created_at column, but that doesn't really account for how I'm going to sort past classes. Maybe I can rely on the props from the react compenents?

##Notes from 1/28
OH OK: http://eileencodes.com/posts/actioncontroller-parameters-now-returns-an-object-instead-of-a-hash/
So I've been creating an object not a hash with my parameters 
Which also happens to be nil anyway upon further testing 

##Notes from 1/26
Parameters aren't quite working -- currently getting an error where I have the "wrong number of arguments" for the name field on my form. I've tried a few different things, mainly resulting in 
getting a 204 no content error and a "not saved :(" notification from my create method.
-Need to research forms more to make sure input is correctly hashed

##Notes from 1/24:
Adding a new student isn't working because something about my private methods for strong params is making it so the param isn't being passed to the create method as a hash.
- Need to look at the form set up possibly? I have no idea why the strong params aren't saving as a hash

##Notes from 1/19:
The password was hashed incorrectly, so the authenticate bcrypt method isn't working.
- Need to crate new user/drop initial user and correctly hash pw to retest sessions

