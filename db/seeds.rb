# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Meal.destroy_all
Serving.destroy_all

u1 = User.create!(email: "sebastien.louit@gmail.com", 
                  password: "password", 
                  username: "sebastien", 
                  name: "Sebastien",
                  description: "Meat lover, curry cooker and salmond eater",
                  photo: "https://scontent-lhr3-1.xx.fbcdn.net/v/t1.0-9/62671_10153018266300851_120386450870403545_n.jpg?oh=5876f837fb34d2a444a60217355c5505&oe=577677C4", 
                  location: "Notting Hill, London")
            
u2 = User.create!(email: "marion.heuze@gmail.com", 
                  password: "password", 
                  username: "marion", 
                  name: "Marion", 
                  description: "Vegetable lover, asian food enthousiast and loves spicy food",
                  photo: "https://scontent-lhr3-1.xx.fbcdn.net/t31.0-8/s960x960/10919436_10152510086976619_6124128323041883217_o.jpg",
                  location: "Something Hill, London")

u3 = User.create!(email: "marlilyn.hode@gmail.com", 
                  password: "password", 
                  username: "marilyn", 
                  name: "marlilyn", 
                  description: "Veggi, loves cat, healthy food, and other healthy cool stuff",
                  photo: "https://scontent-lhr3-1.xx.fbcdn.net/hphotos-xaf1/v/t1.0-9/308446_10150415933421055_1107897337_n.jpg?oh=ea4e1a23f1270c9eb19ff6da188fd9e9&oe=57A8ECBF",
                  location: "Paris")


# m1 = u1.meals.create!(title: "A super home-made curry",
#                       description: "The best curry ever",
#                       category: "asian food")

# m2 = u1.meals.create!(title: "Cool falafel",
#                       description: "Home made traditionnal falafel",
#                       category: "falafel")


# m3 = u1.meals.create!(title: "Pasta salad",
#                       description: "Pasta, cheese and aspargus",
#                       category: " Pasta salads ")

# m4 = u2.meals.create!(title: "Hyper good duck",
#                       description: "Slowly cooked duck with good sides",
#                       category: " Duck")

# s1 = Serving.create!(   meal_id: m1.id,
#                         day: Time.now + 1.week.to_i,
#                         price: 12,
#                         location: "Coven Garden",
#                         number: 5,
#                         user_id: u1.id)

# s2 = Serving.create!(   meal_id: m2.id,
#                         day: Time.now + 2.week.to_i,
#                         price: 17,
#                         location: "Notting Hill",
#                         number: 3,
#                         user_id: u1.id)

# s3 = Serving.create!(   meal_id: m3.id,
#                         day: Time.now + 1.week.to_i,
#                         price: 21,
#                         location: "Hyde Park",
#                         number: 2,
#                         user_id: u1.id)

# o1 = Order.create!(serving_id: s1.id,
#                          details: "Looking forward to taste this delicious curry",
#                          sender_id: u1.id,
#                          receiver_id: u2.id)



# m1.graffiti_image = Rails.root.join("db/images/curry.jpg").open
# m1.save!

# m2.graffiti_image = Rails.root.join("db/images/falafel.jpg").open
# m2.save!

# m3.graffiti_image = Rails.root.join("db/images/pasta_bowl.jpg").open
# m3.save!

# m4.graffiti_image = Rails.root.join("db/images/duck.jpg").open
# m4.save!

