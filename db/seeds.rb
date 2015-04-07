# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Seed the database with the fruits by season.  This is going to take some manual work.

User.create(first_name: "John", last_name: "Smith", email: "jsmith@yo.com", location: "San Francisco")

Fruit.create(fruit_name: "Orange", fruit_description: "Round, plump.  Orange in color.", category: "Citrus", season: "Spring")

Fruit.create(fruit_name: "Apple", fruit_description: "Round, Crispy.  Red in color.", category: "Pome", season: "Winter")

Fruit.create(fruit_name: "Pear", fruit_description: "Light.  Crisp and Soft.", category: "Pome", season: "Summer")


Favorite.create(user_id: 1, fruit_id: 2)
