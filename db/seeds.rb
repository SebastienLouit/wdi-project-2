# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Meals.destroy_all

u1 = User.create!(email: "sebastien.louit@gmail.com", 
                  password: "password", 
                  username: "sebastien", 
                  name: "Sebastien",
                  description: "Meat lover, curry cooker and salmond eater"
                  photo: "https://scontent-lhr3-1.xx.fbcdn.net/v/t1.0-9/62671_10153018266300851_120386450870403545_n.jpg?oh=5876f837fb34d2a444a60217355c5505&oe=577677C4", 
                  location: "Notting Hill, London")
            
u2 = User.create!(email: "marion.heuze@gmail.com", 
                  password: "password", 
                  username: "marion", 
                  name: "Marion", 
                  description: "Vegetable lover, asian food enthousiast and loves spicy food",
                  photo: "https://scontent-lhr3-1.xx.fbcdn.net/t31.0-8/s960x960/10919436_10152510086976619_6124128323041883217_o.jpg",
                  location: "Something Hill, London")


m1 = u1.meals.create!(title: "A super home-made curry",
                         description: "The best curry ever",
                         image: "http://www.katherinemartinelli.com/wp-content/uploads/2011/10/Japanese-Chicken-Curry-1.jpg",
                         type: "asian food")