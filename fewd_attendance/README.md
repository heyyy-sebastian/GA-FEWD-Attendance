#DAILY NOTES
##Notes from 1/26
Parameters aren't quite working -- currently getting an error where I have the "wrong number of arguments" for the name field on my form. I've tried a few different things, mainly resulting in 
getting a 204 no content error and a "not saved :(" notification from my creat method.
-Need to research forms more to make sure input is correctly hashed

##Notes from 1/24:
Adding a new student isn't working because something about my private methods for strong params is making it so the param isn't being passed to the create method as a hash.
- Need to look at the form set up possibly? I have no idea why the strong params aren't saving as a hash

##Notes from 1/19:
The password was hashed incorrectly, so the authenticate bcrypt method isn't working.
- Need to crate new user/drop initial user and correctly hash pw to retest sessions

