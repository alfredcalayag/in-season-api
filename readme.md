#In Season API

*This app is still under development.*

What's in season today?  Eating "in season" produce is a widely adopted nutrition concept and promotes several health benefits.  Nobody wants to remember the different lists as the seasons and months pass, but we all want to know what they are at varying random times of the day.  This app will push notifications to users that are interested in fruits and vegetables that are in season based on the user's preferences and location.

**Let's make eating well *easy*.**

## How it works
This is the decoupled back-end built using.  It will be used for its routing service for the client-side application.


##Routes:

GET /fruits
  Returns all fruits

GET /fruits/seasons
  Returns list of all seasons (i.e. Spring, Summer, Fall, Winter)

GET /fruits/seasons/:season_name
  Returns a list of fruits in season for the specified :season_name

GET /fruits/categories
  Returns all fruit categories

GET /fruits/categories/:category_name
  Returns all fruits per the category_name

GET /fruits/categories/:category_name/:fruit_name
  Returns the specified fruit information

GET /users
  Returns all users

GET /users/:user_id
  Returns a user's list of fruits


##Technologies:
*[Rails API](https://github.com/rails-api/rails-api)
*SQLite3: Database
*RSpec: Controller and Model Testing


##Known-issues:
*Not exactly an issue, but a comment that CORS will need to be configured on the controller to allow access to the client-side application.  While under development, this is set to allow a localhost server.