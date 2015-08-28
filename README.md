#WDI Project Three - Group Project

##Description
Objective is to create a concert application that allows users to find upcoming events in their area, save those events to their account, and receive email alerts when tickets go on sale.  This project will use the following technologies:
Ruby on Rails, HTML, CSS

**Team Members:**
Riaz Bacchus, Katerina Burshteyn, Heather Kemp, David Nash

The Project Trello Board Link: https://trello.com/b/kaaEYn0j

##Artifacts

####User Stories
Users Can Do the Following:
1. Search for music events by location.
2. Search for music events by genre
3. Search for music events by venue
4. Search for music events by artist
5. Create a login account to save search favorites.
   Log In/Out (sessions)
6. Receive email alert when tickets go on sale.

####Front-end Wireframes


####Routes
get '/' root#index<br>
get '/searches' searches#show<br>
post '/events'  events#create<br>
delete '/events/:id'  events#destroy<br>
get '/sessions/new'  sessions#new<br>
post '/sessions'  session#create<br>
delete '/sessions/:id' sessions#destroy<br>
post '/users'  users#create<br>
get '/users/:id'  users#show<br>
get '/users/:id/edit' users#edit<br>
put '/users/:id'  users#update<br>
delete '/users/:id'  users#destroy<br>


####Database Design
