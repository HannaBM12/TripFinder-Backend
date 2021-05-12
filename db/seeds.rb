# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Trip.destroy_all
Client.destroy_all
Attraction.destroy_all
Category.destroy_all

puts "Destroying Seeds"

client1 = Client.create(name:"Hanna Mulugeta", email: "Hannabmulugeta@gmail.com", age: '25', password: "password")
client2 = Client.create(name:"Menachem Futerfas", email: "menachemfuterfas@gmail.com", age: '25', password: "password")

cat1 = Category.create(name: "Park", description: "Any type of parks")
cat2 = Category.create(name: "Museum", description: "Museums")
cat3 = Category.create(name: "LandMark", description: "Land Marks")
cat4 = Category.create(name: "Theater", description: "Movie theaters")
cat5 = Category.create(name: "Beach", description: "Beaches")
cat6 = Category.create(name: "City Sighting", description: "visiting cities")

attraction1 = Attraction.create(name: "Statue of Liberty", description: "A universal symbol of freedom, the Statue of Liberty is the most familiar icon and the largest statue in the world.", image: "https://www.planetware.com/photos-large/US/new-york-statue-of-liberty-2.jpg", location: "New York", price: 10, category_id: cat2.id )
attraction2 = Attraction.create(name: "Smithsonian National Zoological Park", description: "Founded in 1889, its mission is to provide engaging experiences with animals and create and share knowledge to save wildlife and habitats", image: "https://www.si.edu/sites/default/files/newsdesk/building/nzp.jpg", location: "Washington DC", price: 4.99, category_id: cat2.id )
attraction3 = Attraction.create(name: "Washington Monument", description: "The Washington Monument is an obelisk within the National Mall in Washington, D.C., built to commemorate George Washington", image: "https://d1dzqwexhp5ztx.cloudfront.net/imageRepo/7/0/113/310/593/S_Washington_Monument_S.jpg", location: "Washington Dc", price: 6.99, category_id: cat2.id )
attraction4 = Attraction.create(name: "National Gallery of Art", description: "The National Gallery of Art serves the nation by welcoming all people to explore and experience art, creativity, and our shared humanity", image: "https://media.tacdn.com/media/attractions-splice-spp-674x446/06/ff/b5/6d.jpg", location: "Washington Dc", price: 4.99, category_id: cat2.id )
attraction5 = Attraction.create(name: "Central Park", description: "Central Park is an urban park in New York City located between the Upper West and Upper East Sides of Manhattan. It is the fifth-largest park in the city by area, covering 843 acres", image: "https://www.planetware.com/photos-large/USNY/new-york-city-central-park-1.jpg", location: "New York", price: 3.99, category_id: cat1.id )
attraction6 = Attraction.create(name: "Fort Tryon Park", description: "Fort Tryon Park is a public park located in the Hudson Heights and Inwood neighborhoods of the borough of Manhattan in New York City. The 67-acre park is situated on a ridge in Upper Manhattan, close to the Hudson River to the west", image: "https://3evlzmko7591que7cpvox4ta-wpengine.netdna-ssl.com/wp-content/uploads/2020/09/Fort-Tryon-Park-NYC-copyright-Byelikova-Dreamstime-1600x800-1.jpg", location: "New York", price: 6.99, category_id: cat1.id )
attraction7 = Attraction.create(name: "KENILWORTH PARK AND AQUATIC GARDEN", description: "Part of Anacostia Park. Located along the east bank of the Anacostia River, this beautiful spot is filled with hiking trails and boardwalks enticing visitors year round.", image: "http://www.trolleytours.com/wp-content/uploads/2017/09/kenilworth-park.jpg", location: "Washington DC", price: 6.99, category_id: cat1.id )
attraction8 = Attraction.create(name: "THE YARDS PARK", description: "A waterfront park with a boardwalk running along the Anacostia River. Home to well-known ‘outdoor rooms,’ visitors to this park can wander near the dancing fountains at the entrance that welcome visitors to this special space.", image: "https://ctycms.com/dc-capitol-riverfront/images/ypt1-dancing-fountains.jpg", location: "Washington Dc", price: 7.99, category_id: cat1.id )
attraction9 = Attraction.create(name: "Abraham Lincoln Memorial", description: "The Abraham Lincoln Memorial is the 5th most visited National Park Service site in the country. In fact, over 7 million people visit the memorial annually.", image: "https://content.tripster.com/travelguide/wp-content/uploads/2019/07/lincoln-memorial-1746358_1920.jpg", location: "Washington Dc", price: 7.99, category_id: cat3.id )
attraction10 = Attraction.create(name: "White House", description: "Obviously, the White House ranks high as one of the top Washington DC landmarks you’ve got to see during your trip.", image: "https://ctycms.com/dc-capitol-riverfront/images/ypt1-dancing-fountains.jpg", location: "Washington Dc", price: 7.99, category_id: cat3.id )
attraction11 = Attraction.create(name: "Thomas Jefferson Memorial", description: "The Thomas Jefferson Memorial is one of the most iconic Washington DC landmarks. Modeled after the Pantheon in Rom, this outstanding piece of architecture serves as a symbol of liberty.", image: "https://content.tripster.com/travelguide/wp-content/uploads/2019/07/Jefferson-Memorial-cherry-blossoms-663578_1920.jpg", location: "Washington Dc", price: 8.99, category_id: cat3.id )
attraction12 = Attraction.create(name: "United States Capitol", description: "Serving as the home of the Senate and House of Representatives, the U.S. Capitol building is not only architecturally impressive but a symbol of American democracy the world over.", image: "https://content.tripster.com/travelguide/wp-content/uploads/2019/07/United_States_Capitol_west_front_edit2.jpg", location: "Washington Dc", price: 7.99, category_id: cat3.id )
attraction13 = Attraction.create(name: "Radio City Music Hall", description: "Stemming from a legendary venue widely known as “The World’s Most Famous Arena,” today MSG includes a mix of renowned venues that span four of the nation’s largest entertainment markets.", image: "https://www.newyorkbyrail.com/wp-content/uploads/2018/05/Radio-City-Music-Hall-1200x650.jpg", location: "New York", price: 10.99, category_id: cat4.id )
attraction14 = Attraction.create(name: "Lincoln Center for the Performing Arts", description: "Learn more about Lincoln Center’s iconic landmarks—including the Revson Fountain, the newly transformed Alice Tully Hall, and the Metropolitan Opera House!Go behind the scenes at venues where a spectacular range of artists have performed, including Luciano Pavarotti, Mikhail Baryshnikov, Leonard Bernstein, Renée Fleming, and Bruce Springsteen.", image: "https://www.walksofnewyork.com/blog/wp-content/uploads/2012/04/lincoln-center-theater-nyc-night-credit-spirit-of-america-600x400.jpg", location: "New York", price: 15.99, category_id: cat4.id )
attraction15 = Attraction.create(name: "National Theatre DC", description: "SThe National Theatre is located in Washington, D.C., and functions as a venue for live stage productions with seating for 1,676. Despite its name, it is not a governmentally funded national theatre, but operated by a private, non-profit organization", image: "https://s3.amazonaws.com/ocn-media/6778d14b-42cd-48c0-9ab2-29b48a621a3f.jpg", location: "Washington Dc", price: 10.99, category_id: cat4.id )
attraction16 = Attraction.create(name: "Virginia Beach", description: "For a longer beach getaway, D.C. locals should head to Virginia Beach, Virginia. This charming beach town has plenty to offer a wide variety of travelers, from families to college coeds", image: "https://i0.wp.com/files.tripstodiscover.com/files/2017/10/bigstock-Beach-Vacation-1989793.jpg?resize=1568%2c1176", location: "Virginia VA", price: 7.99, category_id: cat5.id )
attraction17 = Attraction.create(name: "Long Beach", description: "Long Beach is a city in New York found in the Long Beach Barrier Island. It is surrounded by the Reynolds Channel and the Atlantic Ocean.", image: "https://i0.wp.com/files.tripstodiscover.com/files/2017/10/bigstock-Beach-Vacation-1989793.jpg?resize=1568%2c1176", location: "New York", price: 10.99, category_id: cat5.id )
attraction18 = Attraction.create(name: "Rockaway Beach — Queens", description: "FRockaway Beach can be found in Queens, between Rockaway Park and Arverne. It is considered by many as the best beach for swimming in NYC.", image: "https://nitrocdn.com/nrySoMTdLOiwYcExRRERttMDYewwmJKN/assets/static/optimized/rev-7e3c179/wp-content/uploads/2021/01/Rockaway-Beach-%E2%80%94-Queens.jpg", location: "New York", price: 10.99, category_id: cat5.id )
attraction19 = Attraction.create(name: "Coney Island — Brooklyn", description: "Coney Island in Brooklyn is known for its vibrant and fun amusement park right beside the beach. It has been a seaside amusement park since the late 19th century.", image: "https://nitrocdn.com/nrySoMTdLOiwYcExRRERttMDYewwmJKN/assets/static/optimized/rev-7e3c179/wp-content/uploads/2021/01/Coney-Island-%E2%80%94-Brooklyn.jpg", location: "New York", price: 10.99, category_id: cat5.id )
attraction20 = Attraction.create(name: "Ocean City", description: "Ocean City, Maryland is a three-hour drive from Washington, D.C, and a popular beach destination for D.C. residents. Many D.C. travelers make the commute to Ocean City for a day trip.", image: "https://www.gannett-cdn.com/presto/2019/05/26/PSAY/64a5632b-71a5-43bc-bf9d-76a00c76d644-Ocean_City_Memorial_Day_14_of_32.jpg", location: "Maryland MD", price: 10.99, category_id: cat5.id )
attraction21 = Attraction.create(name: "Hop On Hop Off DC Tours by Old Town Trolley", description: "Hop aboard Old Town Trolley and enjoy a fun-filled day of Transportainment! You’ll enjoy a fully-narrated tour of Washington DC while being able to hop on and off as much as you’d like.", image: "https://www.selectconcierge.com/wp-content/uploads/2019/04/01_old-town-trolley-silver-pass-amp-dc-ducks.jpg", location: "Washington DC", price: 55.99, category_id: cat6.id )
attraction22 = Attraction.create(name: "New York in One Day Guided Sightseeing Tour", description: "Make the most of your time in the city that never sleeps on a guided tour of NYC’s top attractions. Travel by both boat (seasonal) and bus as you swing by the 9/11 Memorial, Central Park, Rockefeller Center and more.", image: "https://i.insider.com/5b34edb47e7360a1058b4594?width=1000&format=jpeg&auto=webp", location: "New York", price: 30.99, category_id: cat6.id )
attraction23 = Attraction.create(name: "New York City Harbor Lights Cruise", description: "Experience the lights of New York City at sunset on this twilight cruise along the Hudson River and into New York Harbor.", image: "https://vamzio.com/wp-content/uploads/2018/08/CircleLine_Midtown_Night-1.jpg", location: "New York", price: 41.99, category_id: cat6.id )
attraction24 = Attraction.create(name: "Ground Zero Tour, Memorial and Museum, One World Observatory", description: "In remembrance of the events of September 11, 2001, take this guided tour of Ground Zero and the 9/11 Memorial. Walk through the space of the former World Trade Center in NYC, and get a deeper understanding of the events that took place on that day.", image: "https://media.tacdn.com/media/attractions-splice-spp-674x446/07/75/6d/fe.jpg", location: "New York", price: 50.99, category_id: cat6.id )


trip1 = Trip.create(client_id: client1.id, attraction_id: attraction1.id, date: "05/29/21", quantity: 1, reviews: "Nice Place", rating: 4.2, total: 0)
trip2 = Trip.create(client_id: client2.id, attraction_id: attraction3.id, date: "05/30/21", quantity: 1, reviews: "Nice Place", rating: 4.2, total: 0)
trip3 = Trip.create(client_id: client1.id, attraction_id: attraction2.id, date: "06/07/21", quantity: 2, reviews: "Nice Place", rating: 4.2, total: 0 )

puts "Seeds done."