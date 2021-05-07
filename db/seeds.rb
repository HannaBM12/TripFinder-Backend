# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Client.destroy_all
Category.destroy_all
Attraction.destroy_all
Trip.destroy_all

puts "Destroying Seeds"

client1 = Client.create(name:"Hanna Mulugeta", email: "Hannabmulugeta@gmail.com", age: '25', password: "password")
client2 = Client.create(name:"Menachem Futerfas", email: "menachemfuterfas@gmail.com", age: '25', password: "password")

cat1 = Category.create(name: "Amusement Parks", description: "Parks")
cat2 = Category.create(name: "Museum", description: "Museums")
cat3 = Category.create(name: "LandMark", description: "Land Marks")

attraction1 = Attraction.create(name: "Statue of Liberty", description: "A universal symbol of freedom, the Statue of Liberty is the most familiar icon and the largest statue in the world.", image: "https://www.planetware.com/photos-large/US/new-york-statue-of-liberty-2.jpg", location: "New York", price: 0, category_id: cat2.id )
attraction2 = Attraction.create(name: "Smithsonian National Zoological Park", description: "Founded in 1889, its mission is to provide engaging experiences with animals and create and share knowledge to save wildlife and habitats", image: "https://www.si.edu/sites/default/files/newsdesk/building/nzp.jpg", location: "Washington DC", price: 0, category_id: cat1.id )
attraction3 = Attraction.create(name: "Washington Monument", description: "The Washington Monument is an obelisk within the National Mall in Washington, D.C., built to commemorate George Washington", image: "https://d1dzqwexhp5ztx.cloudfront.net/imageRepo/7/0/113/310/593/S_Washington_Monument_S.jpg", location: "Washington Dc", price: 0, category_id: cat3.id )

trip1 = Trip.create(client_id: client1.id, attraction_id: attraction1.id, date: "05/29/21", quantity: 1, reviews: "Nice Place", rating: 4.2, total: 0 )
trip2 = Trip.create(client_id: client2.id, attraction_id: attraction3.id, date: "05/30/21", quantity: 1, reviews: "Nice Place", rating: 4.2, total: 0 )
trip3 = Trip.create(client_id: client1.id, attraction_id: attraction2.id, date: "06/07/21", quantity: 2, reviews: "Nice Place", rating: 4.2, total: 0 )

puts "Seeds done."