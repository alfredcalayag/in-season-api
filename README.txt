In Season API

Eating in season produce is a widely adopted nutrition concept promoting multiple benefits.  What's in season today?  Nobody wants to remember the different lists as the seasons and months pass, but we all want to know.  This app will push notifications to users that are interested in fruits and vegetables that are in season

Let's make eating well easy.


For simplicity purposes, and a quicker route to MVP, I am going to focus on fruits only and later expanding to vegetables.


User Stories:

As a user, I want to add fruits that I like to my list.

As a user, I want to remove fruits from my list.

As a user, I want to receive an email when the fruit becomes in season.

As a user, I want to see suggestions on other fruits that I might like.

As a user, I want to receive regular recipe suggestions on how to eat/prepare the fruits in my list.

As a user, I want to see the nutritional facts of the fruit.

As a user, I want to be notified of fun facts about my fruits.

As a user, I want to see where the fruit is grown.  City/State/Farm Name?

As a user, I want to be notified ahead a week ahead of time when new fruits will come into season.

As a user, I want to see others who like the same fruits.

As a user, I want to see the nearest grocery stores that carry my fruit.

As a user, I want to see the nearest farmers markets that carry my fruit.



Schema:
- There are many users
- There are many fruits

- A user has many fruits
- A user has a location
- A user has an email address

- A fruit belongs to a fruit_category
- A fruit belongs to a season
- A fruit has nutritional facts

- A season has many fruits

- A fruit_category has many fruits

Routing:

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