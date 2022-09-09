

puts "Destroying seeds"
User.destroy_all
Chatroom.destroy_all
Hike.destroy_all

puts "creating users..."

user1 = User.new(
  first_name: "Anja",
  last_name: "Anja",
  nickname: "AnjaK",
  email: "anja@email.com",
  password: "password",
  location: "Switzerland"
)
user1.save!


user2 = User.new(
  first_name: "Joeri",
  last_name: "Joeri",
  nickname: "JoeriV",
  email: "joeri@email.com",
  password: "password",
  location: "Netherlands"
)
user2.save!

user3 = User.new(
  first_name: "Paul",
  last_name: "Paul",
  nickname: "PaulG",
  email: "paul@email.com",
  password: "password",
  location: "England"
)
user3.save!

user4 = User.new(
  first_name: "Denis",
  last_name: "Denis",
  nickname: "DenisC",
  email: "denis@email.com",
  password: "password",
  location: "Italy"
)
denis = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
user4.photo.attach(io: denis, filename: "nes.png", content_type: "image/png")
user4.save!

user5 = User.new(
  first_name: "Katherine",
  last_name: "Meyer",
  nickname: "KatherineM",
  email: "katherine@email.com",
  password: "password",
  location: "Le Brassus, Switzerland",
  bio: "My name is Katherine, I’m in my mid-20s and I love the outdoors. I’m originally from Le Brassus, just north of Geneva, which is surrounded by beautiful countryside. This is where my passion for hiking and love of animals comes from – I have a Pinscher, called Lenny. My aim in setting up hikes is to allow other outdoor enthusiasts to see some of the wonderful countryside from my favourite part of Switzerland."
)
katherine = File.open("app/assets/images/avatar-katherine.jpg")
user5.photo.attach(io: katherine, filename: "avatar.png", content_type: "image/png")
user5.save!

user6 = User.new(
  first_name: "Stefan",
  last_name: "Müller",
  nickname: "StefanM",
  email: "stefan@email.com",
  password: "password",
  location: "Bern, Switzerland",
  bio: "I’m Stefan and work in the city. I’m a 20-something young professional and I’ve just finished an intensive tech bootcamp so I’m looking to spend more time in nature – especially hiking! I’m from Bern, Switzerland, and was introduced to NaturEscape by my friend that’s really into hiking."
)
stefan = File.open("app/assets/images/avatar-steven.jpg")
user6.photo.attach(io: stefan, filename: "avatar.png", content_type: "image/png")
user6.save!

# tag creation
one_day_tag = Tag.new(name: "1 day")
one_day_tag.save!
multiple_days_tag = Tag.new(name: "multiple-days")
multiple_days_tag.save!
start_date_tag = Tag.new(name: "start date")
start_date_tag.save!
end_date_tag = Tag.new(name: "end date")
end_date_tag.save!
dog_tag = Tag.new(name: "dog friendly")
dog_tag.save!
kid_tag = Tag.new(name: "kid friendly")
kid_tag.save!
beginner_tag = Tag.new(name: "beginner")
beginner_tag.save!
intermediate_tag = Tag.new(name: "intermediate")
intermediate_tag.save!
expert_tag = Tag.new(name: "expert")
expert_tag.save!
flat_tag = Tag.new(name: "flat")
flat_tag.save!
hill_tag = Tag.new(name: "hills")
hill_tag.save!
mountain_tag = Tag.new(name: "mountains")
mountain_tag.save!
english_tag = Tag.new(name: "english-speaking")
english_tag.save!

puts "users created!"

puts "creating hikes..."

hike3 = Hike.new(
  title: "Tour du Mont-Blanc",
  description: "The Tour du Mont Blanc is a system of hiking trails that covers 170 kilometers, with many different starting points, including Courmayeur, Les Houches, and Chamonix. Along the way, mountain refuges (mostly dormitory-style accommodations) allow hikers to rest and get refreshments or refuel with a hearty meal and stay overnight in cozy Alpine lodgings.",
  location: "Chamonix, France",
  date: DateTime.new(2022, 9, 14),
  user_id: user3.id,
  duration: "multiple days",
  buddy: "dog",
  level: "intermediate",
  terrain: "hills",
  language: "english",
  length: "17"
)
hike3.save!
hike3_chatroom = Chatroom.new(hike: hike3)
hike3_chatroom.save!

hike1 = Hike.new(
  title: "Vallée de Joux",
  description: "Katherine here, I grew up in the heart of the Vallée de Joux in Switzerland and I am planning a lovely hike from Col du Marchairuz. We will leave early in the morning and hike up to the Mont-Tendre summit where we’ll cook a traditional “moitié-moitié” cheese fondue and admire a 360° view of the Leman Lake, the Vallée and France before heading up to a mountain cottage for the lunch and to get some rest. After that, we will reach the lake “de Joux” and spend some time in the woods. Eventually, we will hike our way back to our starting point in the evening.
  Lenny, my four-legged furry best buddy follows me on every adventure so I would love to meet other dog owners! ",
  location: "Col du Marchairuz, Switzerland",
  date: DateTime.new(2022, 9, 9),
  user_id: user5.id,
  duration: "1 day",
  buddy: "dog",
  level: "beginner",
  terrain: "mountains",
  language: "english",
  length: "12"
)
hike1_chatroom = Chatroom.new(hike: hike1)
hike1_chatroom.save!

file = File.open("app/assets/images/dorothea-oldani-ANG04nEhp3U-unsplash.jpg")
file2 = File.open("app/assets/images/janis-wolf-vfmNDJQDoMM-unsplash.jpg")
file3 = File.open("app/assets/images/hike1.jpg")
file4 = File.open("app/assets/images/hike2.jpg")
file5 = File.open("app/assets/images/hike3.jpg")
file6 = File.open("app/assets/images/hike4.jpg")
hike1.photos.attach(io: file, filename: "hike.png", content_type: "image/png")
hike1.photos.attach(io: file2, filename: "hike.png", content_type: "image/png")
hike1.photos.attach(io: file3, filename: "hike.png", content_type: "image/png")
hike1.photos.attach(io: file4, filename: "hike.png", content_type: "image/png")
hike1.photos.attach(io: file5, filename: "hike.png", content_type: "image/png")
hike1.photos.attach(io: file6, filename: "hike.png", content_type: "image/png")
hike1.save!

hike2 = Hike.new(
  title: "5 Lakes Walk",
  description: "The path leads past the lakes of the Stellisee, Grindjisee, Grünsee, Moosjisee and Leisee. Each of these mountain lakes is very different in terms of shape, colour, character and size, and has its own special attraction. The Leisee is good for swimming: children love it. The Grünsee looks out over a rather more rugged landscape, where Swiss stone pines nevertheless manage to grow among the scree and sand. The shores of the Grindjisee are home to rare flowers. And so on – each one promises a unique experience.",
  location: "Zermatt, Switzerland",
  date: DateTime.new(2022, 9, 14),
  user_id: user2.id,
  duration: "1 day",
  buddy: "dog",
  level: "intermediate",
  terrain: "mountains",
  length: "28"
)
hike2.save!
hike2_chatroom = Chatroom.new(hike: hike2)
hike2_chatroom.save!

hike61 = Hike.new(
  title: "5 Lakes Walk",
  description: "The path leads past the lakes of the Stellisee, Grindjisee, Grünsee, Moosjisee and Leisee. Each of these mountain lakes is very different in terms of shape, colour, character and size, and has its own special attraction. The Leisee is good for swimming: children love it. The Grünsee looks out over a rather more rugged landscape, where Swiss stone pines nevertheless manage to grow among the scree and sand. The shores of the Grindjisee are home to rare flowers. And so on – each one promises a unique experience.",
  location: "Lausanne, Switzerland",
  date: DateTime.new(2022, 9, 14),
  user_id: user5.id,
  duration: "multiple days",
  buddy: "dog",
  level: "intermediate",
  terrain: "mountains",
  length: "28"
)
hike61.save!
hike61_chatroom = Chatroom.new(hike: hike61)
file10 = File.open("app/assets/images/toomas-tartes-Yizrl9N_eDA-unsplash.jpg")
hike1.photos.attach(io: file10, filename: "hike.png", content_type: "image/png")
hike61_chatroom.save!


hike4 = Hike.new(
  title: "Ruine Homburg",
  description: "The Homburg ruin, also called Neu-Homberg, is located in the
  Swiss municipality of Läufelfingen in the canton of Basel-Landschaft.
  The ruin of the castle is located at 650 m above sea level.
  M. above the narrowest point of the named after her Homburgertal.
  From the SBB stations Buckten and Läufelfingen and
  from Bad Ramsach you can reach them on foot in about 30 minutes.
  The paths are signposted in yellow. From the viewing platform of the
  residential tower you have a view of the surrounding Jura hills.",
  location: "Läufelfingen, Sissach, Basel-Landschaft, Switzerland",
  date: DateTime.new(2022, 9, 25),
  user_id: user4.id,
  duration: "1 day",
  buddy: "dog",
  level: "beginner",
  terrain: "mountains",
  language: "english",
  length: "7"
)
hike4.save!
hike4_chatroom = Chatroom.new(hike: hike4)
hike4_chatroom.save!

hike5 = Hike.new(
  title: "Hasenhornturm",
  description: "The Hasenhorn Tower stands on the 1,155 meter high Hasenhorn,
  not far from the city of Todtnau.
  The 21 meter high tower was built from old Douglas fir trunks that were cut in the Todtnauer city forest.
  From the viewing platform at a height of 15 meters,
  you can enjoy a magnificent panoramic view of 23 Black Forest peaks.",
  location: "Todtnau, Germany",
  date: DateTime.new(2022, 9, 11),
  user_id: user1.id,
  duration: "multiple days",
  buddy: "dog",
  level: "expert",
  terrain: "mountains",
  length: "25"
)
hike5.save!
hike5_chatroom = Chatroom.new(hike: hike5)
hike5_chatroom.save!

hike6 = Hike.new(
  title: "Bildstein",
  description: "The Bildsteinfelsen can be hiked from almost all directions.
  The paths and paths are different in length, some are quite comfortable,
  others are sweaty. You can reach the vantage point of Altglashütten and the Windgfällweiher,
  Raitenbucher Höhe, Fischbach, the Kohlplatz, Schluchsee, the Stutz woods,
  or Aha and the steep serpentine path.
  The blue rhombus of the Schwarzwaldvereinweg from Lenzkirch to the Feldberg leads over the picture stone.",
  location: "Schluchsee, Germany
  ",
  date: DateTime.new(2022, 9, 4),
  user_id: user2.id,
  duration: "1 day",
  buddy: "dog",
  level: "beginner",
  terrain: "flat",
  language: "english",
  length: "18"

)
hike6.save!
hike6_chatroom = Chatroom.new(hike: hike6)
hike6_chatroom.save!

hike7 = Hike.new(
  title: "Lünersee Circuit Trail",
  description: "Lünersee is a large alpine lake high above Brand Valley in the Austrian State of Vorarlberg. Set amidst the striking limestone mountains of the Rätikon, this beautiful lake is a scenic destination for casual walking as well as strenuous hiking.",
  location: "Vorarlberg, Austria",
  date: DateTime.new(2022, 9, 10),
  user_id: user3.id,
  duration: "multiple days",
  buddy: "kid",
  level: "beginner",
  terrain: "mountains",
  language: "english",
  length: "17"
)
hike7.save!
hike7_chatroom = Chatroom.new(hike: hike7)
hike7_chatroom.save!

hike8 = Hike.new(
  title: "Mont Veyrier",
  description: "Mont Veyrier rises to 1,291 meters above sea level.
  It is a magnificent summit, from which we have a very beautiful view of
  Annecy and its lake.
  One of the two peaks on the northeast side of the Annecy lake (at 1291 m).
  Marked by a wooden sign and a big stone man.",
  location: "Haute-Savoie, France",
  date: DateTime.new(2022, 9, 8),
  user_id: user4.id,
  duration: "1 day",
  buddy: "dog",
  level: "beginner",
  terrain: "flat",
  length: "8"
)
hike8.save!
hike8_chatroom = Chatroom.new(hike: hike8)
hike8_chatroom.save!

hike9 = Hike.new(
  title: "Puy de Dôme",
  description: "A decent hike up Puy de Dome, the highest peak in the
  Monts Dome area of Auvergne at 1,465 Straight up from the car park up to the top
  and down the other side to do a bit of a loop.
  A good outing and I added a bit more to try and take a picture of the train
  which I didnt get. Busy summit because of the train, route and cafe.
  Still an enjoyable day out!
  Note: Ample car park at the start but get there early on weekends or in season.",
  location: "Orcines, Clermont-Ferrand, France",
  date: DateTime.new(2022, 9, 16),
  user_id: user1.id,
  duration: "1 day",
  buddy: "dog",
  level: "beginner",
  terrain: "mountains",
  language: "english",
  length: "9"
)
hike9.save!
hike9_chatroom = Chatroom.new(hike: hike9)
hike9_chatroom.save!

hike10 = Hike.new(
  title: "Passerelle du Monteynard (Ebron)",
  description: "Lac de Monteynard-Avignonet is an artificial water reservoir
  for the Électricité de France power station on the river Drac.
  It belongs to the department of Isère. It is bounded by the canyons of the Drac and Ebron.
  The lake was created in 1961, when the 145-metre-high dam was built.
  The lake is 10 kilometres long, and in some places up to 300 metres wide.
  This lake is often windy and wavy. It is considered to be one of the best places
  for windsurfing and kitesurfing in Europe.
  It is also an important site for fishing, as it has a great variety of fish species.
  Swimming in the lake is permitted.The lake is bordered by the following municipalities:
  Avignonet, Cognet, Marcieu, Mayres-Savel, Monteynard, La Motte-Saint-Martin, Roissard,
  Saint-Arey, Sinard, Treffort.",
  location: "Isère, France",
  date: DateTime.new(2022, 9, 23),
  user_id: user2.id,
  duration: "multiple days",
  buddy: "kid",
  level: "beginner",

  terrain: "mountains",
  language: "english",
  length: "12"
)
hike10.save!
hike10_chatroom = Chatroom.new(hike: hike10)
hike10_chatroom.save!

hike11 = Hike.new(
  title: "Lac de Moiry, Val d'Anniviers",
  description: "Hugging a ridge above the water, the trail offers a breathtaking view over the Moiry Lake reflecting the mountains like a mirror.",
  location: "Zinal, Switzerland",
  date: DateTime.new(2022, 9, 15),
  user_id: user2.id,
  duration: "1 day",
  buddy: "kid",
  level: "beginner",
  terrain: "mountains",
  language: "english",
  length: "8"
)
hike11.save!
hike11_chatroom = Chatroom.new(hike: hike11)
hike11_chatroom.save!

hike12 = Hike.new(
  title: "Brent Crater Trail",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "Algonquin Park, Canada",
  date: DateTime.new(2022, 10, 15),
  user_id: user2.id,
  duration: "1 day",
  buddy: "kid",
  level: "beginner",
  terrain: "mountains",
  language: "english",
  length: "5"
)
hike12.save!
hike12_chatroom = Chatroom.new(hike: hike12)
hike12_chatroom.save!

hike13 = Hike.new(
  title: "W-Trek",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "Torres del Paine, Chile",
  date: DateTime.new(2022, 11, 15),
  user_id: user2.id,
  duration: "1 day",
  buddy: "dog",
  level: "intermediate",
  terrain: "mountains",
  language: "english",
  length: "12"
)
hike13.save!
hike13_chatroom = Chatroom.new(hike: hike13)
hike13_chatroom.save!

hike14 = Hike.new(
  title: "Classic Inca Trail to Machu Pichu",
  description: "Discover all the secrets of the Inca culture through the Sacred Valley and Machu Picchu 2 day tour.",
  location: "Cusco, Peru",
  date: DateTime.new(2022, 9, 21),
  user_id: user2.id,
  duration: "multiple days",
  buddy: "dog",
  level: "expert",
  terrain: "mountains",
  language: "english",
  length: "17"
)
hike14.save!
hike14_chatroom = Chatroom.new(hike: hike14)
hike14_chatroom.save!

hike15 = Hike.new(
  title: "Perito Moreno Glacier Trek",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "Calafate, Argentina",
  date: DateTime.new(2022, 9, 22),
  user_id: user2.id,
  duration: "1 day",
  buddy: "dog",
  level: "intermediate",
  terrain: "hills",
  language: "english",
  length: "7"
)
hike15.save!
hike15_chatroom = Chatroom.new(hike: hike15)
hike15_chatroom.save!

hike16 = Hike.new(
  title: "Chapada Diamantina National Park",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "Brasilia, Brazil",
  date: DateTime.new(2022, 11, 2),
  user_id: user2.id,
  duration: "1 day",
  buddy: "dog",
  level: "beginner",
  terrain: "mountains",
  language: "english",
  length: "12"
)
hike16.save!
hike16_chatroom = Chatroom.new(hike: hike16)
hike16_chatroom.save!

hike17 = Hike.new(
  title: "Puerto Montt round trail",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "Puerto Montt, Chile",
  date: DateTime.new(2022, 10, 13),
  user_id: user2.id,
  duration: "multiple days",
  buddy: "kid",
  level: "beginner",
  terrain: "mountains",
  language: "english",
  length: "9"
)
hike17.save!
hike17_chatroom = Chatroom.new(hike: hike17)
hike17_chatroom.save!

hike18 = Hike.new(
  title: "Roraima mountain top",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "Canaima, Venezuela",
  date: DateTime.new(2022, 9, 30),
  user_id: user2.id,
  duration: "1 day",
  buddy: "kid",
  level: "intermediate",
  terrain: "mountains",
  language: "english",
  length: "14"
)
hike18.save!
hike18_chatroom = Chatroom.new(hike: hike18)
hike18_chatroom.save!

hike19 = Hike.new(
  title: "Guarai Crest Trail",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "Guarai, Brazil",
  date: DateTime.new(2022, 10, 3),
  user_id: user2.id,
  duration: "1 day",
  buddy: "kid",
  level: "intermediate",
  terrain: "mountains",
  language: "english",
  length: "18"
)
hike19.save!
hike19_chatroom = Chatroom.new(hike: hike19)
hike19_chatroom.save!

hike20 = Hike.new(
  title: "Quilotoa Loop",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "Quilotoa, Ecuador",
  date: DateTime.new(2022, 10, 21),
  user_id: user2.id,
  duration: "multiple days",
  buddy: "dog",
  level: "expert",
  terrain: "mountains",
  language: "english",
  length: "34"
)
hike20.save!
hike20_chatroom = Chatroom.new(hike: hike20)
hike20_chatroom.save!

hike21 = Hike.new(
  title: "Forest walk in the Amazon rainforest",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "Fox do Envira, Brazil",
  date: DateTime.new(2022, 10, 15),
  user_id: user2.id,
  duration: "1 day",
  buddy: "kid",
  level: "beginner",
  terrain: "plain",
  language: "english",
  length: "10"
)
hike21.save!
hike21_chatroom = Chatroom.new(hike: hike21)
hike21_chatroom.save!

hike22 = Hike.new(
  title: "Walk around Lago de Chapala",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "Tizapan El Alto, Mexico",
  date: DateTime.new(2022, 10, 15),
  user_id: user2.id,
  duration: "1 day",
  buddy: "dog",
  level: "beginner",
  terrain: "flat",
  language: "english",
  length: "8"
)
hike22.save!
hike22_chatroom = Chatroom.new(hike: hike22)
hike22_chatroom.save!

hike23 = Hike.new(
  title: "Fort Apache Trail",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "Whiteriver, Arizona, USA",
  date: DateTime.new(2022, 12, 4),
  user_id: user2.id,
  duration: "multiple days",
  buddy: "dog",
  level: "intermediate",
  terrain: "hills",
  language: "english",
  length: "20"
)
hike23.save!
hike23_chatroom = Chatroom.new(hike: hike23)
hike23_chatroom.save!

hike25 = Hike.new(
  title: "Desert trail",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "Chihuahua, Mexico",
  date: DateTime.new(2022, 9, 13),
  user_id: user2.id,
  duration: "1 day",
  buddy: "kid",
  level: "beginner",
  terrain: "mountains",
  language: "english",
  length: "4"
)
hike25.save!
hike25_chatroom = Chatroom.new(hike: hike25)
hike25_chatroom.save!

hike26 = Hike.new(
  title: "Yellowstone National Park walk",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "Yellowstone National Park, USA",
  date: DateTime.new(2022, 11, 20),
  user_id: user2.id,
  duration: "multiple days",
  buddy: "dog",
  level: "expert",
  terrain: "mountains",
  language: "english",
  length: "25"
)
hike26.save!
hike26_chatroom = Chatroom.new(hike: hike26)
hike26_chatroom.save!

hike27 = Hike.new(
  title: "Jefferson County Forest Trail",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "Louisville, Kentucky, USA",
  date: DateTime.new(2022, 10, 15),
  user_id: user2.id,
  duration: "1 day",
  buddy: "kid",
  level: "intermediate",
  terrain: "hills",
  language: "english",
  length: "9"
)
hike27.save!
hike27_chatroom = Chatroom.new(hike: hike27)
hike27_chatroom.save!

hike28 = Hike.new(
  title: "Williston Loop Track",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "Williston, USA",
  date: DateTime.new(2022, 11, 12),
  user_id: user2.id,
  duration: "1 day",
  buddy: "dog",
  level: "intermediate",
  terrain: "mountains",
  language: "english",
  length: "11"
)
hike28.save!
hike28_chatroom = Chatroom.new(hike: hike28)
hike28_chatroom.save!

hike29 = Hike.new(
  title: "Lake Agnes Trail",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "Banff National Park, Canada",
  date: DateTime.new(2022, 12, 12),
  user_id: user2.id,
  duration: "1 day",
  buddy: "dog",
  level: "intermediate",
  terrain: "mountains",
  language: "english",
  length: "11"
)
hike29.save!
hike29_chatroom = Chatroom.new(hike: hike29)
hike29_chatroom.save!

hike30 = Hike.new(
  title: "Grotto Canyon Trail",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "Bow Valley Provincial Park, Canada",
  date: DateTime.new(2022, 11, 2),
  user_id: user2.id,
  duration: "1 day",
  buddy: "dog",
  level: "beginner",
  terrain: "hills",
  language: "english",
  length: "7"
)
hike30.save!
hike30_chatroom = Chatroom.new(hike: hike30)
hike30_chatroom.save!

hike31 = Hike.new(
  title: "Valley of the Five Lakes Walk",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "Jasper National Park, Canada",
  date: DateTime.new(2022, 9, 15),
  user_id: user2.id,
  duration: "multiple days",
  buddy: "dog",
  level: "expert",
  terrain: "mountains",
  language: "english",
  length: "25"
)
hike31.save!
hike31_chatroom = Chatroom.new(hike: hike31)
hike31_chatroom.save!

hike32 = Hike.new(
  title: "Joffre Lakes Loop Trail",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "Joffre Lakes Provincial Park, Canada",
  date: DateTime.new(2022, 10, 23),
  user_id: user2.id,
  duration: "1 day",
  buddy: "kid",
  level: "beginner",
  terrain: "flat",
  language: "english",
  length: "6"
)
hike32.save!
hike32_chatroom = Chatroom.new(hike: hike32)
hike32_chatroom.save!

hike33 = Hike.new(
  title: "Walk Through the Rice Fields",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "Sapa, Vietnam",
  date: DateTime.new(2022, 10, 1),
  user_id: user2.id,
  duration: "1 day",
  buddy: "kid",
  level: "beginner",
  terrain: "mountains",
  language: "english",
  length: "10"
)
hike33.save!
hike33_chatroom = Chatroom.new(hike: hike33)
hike33_chatroom.save!

hike34 = Hike.new(
  title: "Seven Star Moutain Loop",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "Mount Qixing, Taiwan",
  date: DateTime.new(2022, 10, 7),
  user_id: user2.id,
  duration: "1 day",
  buddy: "dog",
  level: "intermediate",
  terrain: "mountains",
  language: "english",
  length: "15"
)
hike34.save!
hike34_chatroom = Chatroom.new(hike: hike34)
hike34_chatroom.save!

hike35 = Hike.new(
  title: "Yoshida Trail",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "Mount Fuji, Japan",
  date: DateTime.new(2022, 11, 23),
  user_id: user2.id,
  duration: "1 day",
  buddy: "dog",
  level: "expert",
  terrain: "mountains",
  language: "english",
  length: "11"
)
hike35.save!
hike35_chatroom = Chatroom.new(hike: hike35)
hike35_chatroom.save!

hike36 = Hike.new(
  title: "Himalaya Circuit",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "Besisahar, Nepal",
  date: DateTime.new(2022, 9, 29),
  user_id: user2.id,
  duration: "multiple days",
  buddy: "dog",
  level: "expert",
  terrain: "mountains",
  language: "english",
  length: "30"
)
hike36.save!
hike36_chatroom = Chatroom.new(hike: hike36)
hike36_chatroom.save!

hike37 = Hike.new(
  title: "Kawah Ijen Trail",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "Java Island, Indonesia",
  date: DateTime.new(2022, 11, 12),
  user_id: user2.id,
  duration: "1 day",
  buddy: "dog",
  level: "intermediate",
  terrain: "hills",
  language: "english",
  length: "12"
)
hike37.save!
hike37_chatroom = Chatroom.new(hike: hike37)
hike37_chatroom.save!

hike38 = Hike.new(
  title: "Mount Kinabalu Track",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "Kinabalu National Park, Malaysia",
  date: DateTime.new(2022, 12, 15),
  user_id: user2.id,
  duration: "1 day",
  buddy: "dog",
  level: "expert",
  terrain: "mountains",
  language: "english",
  length: "10"
)
hike38.save!
hike38_chatroom = Chatroom.new(hike: hike38)
hike38_chatroom.save!

hike39 = Hike.new(
  title: "Markha Valley Trek",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "Spitok, India",
  date: DateTime.new(2022, 11, 4),
  user_id: user2.id,
  duration: "1 day",
  buddy: "kid",
  level: "beginner",
  terrain: "flat",
  language: "english",
  length: "8"
)
hike39.save!
hike39_chatroom = Chatroom.new(hike: hike39)
hike39_chatroom.save!

hike40 = Hike.new(
  title: "The Grand Canyon of Oman",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "Muscat, Oman",
  date: DateTime.new(2022, 10, 27),
  user_id: user2.id,
  duration: "1 day",
  buddy: "dog",
  level: "intermediate",
  terrain: "flat",
  language: "english",
  length: "8"
)
hike40.save!
hike40_chatroom = Chatroom.new(hike: hike40)
hike40_chatroom.save!

hike41 = Hike.new(
  title: "Rice Terraces in Batad",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "Banaue, Philippines",
  date: DateTime.new(2022, 12, 7),
  user_id: user2.id,
  duration: "1 day",
  buddy: "kid",
  level: "beginner",
  terrain: "flat",
  language: "english",
  length: "6"
)
hike41.save!
hike41_chatroom = Chatroom.new(hike: hike41)
hike41_chatroom.save!

hike42 = Hike.new(
  title: "Pechora-Ilych Nature Reserve",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "Syktyvkar, Russia",
  date: DateTime.new(2022, 9, 16),
  user_id: user2.id,
  duration: "1 day",
  buddy: "dog",
  level: "intermediate",
  terrain: "mountains",
  language: "english",
  length: "15"
)

hike42.save!
hike42_chatroom = Chatroom.new(hike: hike42)
hike42_chatroom.save!

hike43 = Hike.new(
  title: "Vottvovaara Track",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "Karelia, Russia",
  date: DateTime.new(2022, 11, 12),
  user_id: user2.id,
  duration: "1 day",
  buddy: "dog",
  level: "beginner",
  terrain: "hills",
  language: "english",
  length: "17"
)
hike43.save!
hike43_chatroom = Chatroom.new(hike: hike43)
hike43_chatroom.save!

hike52 = Hike.new(
  title: "Masai Mara Track",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "Nairobi, Kenya",
  date: DateTime.new(2022, 11, 12),
  user_id: user2.id,
  duration: "1 day",
  buddy: "dog",
  level: "beginner",
  terrain: "hills",
  language: "english",
  length: "14"
)
hike52.save!
hike52_chatroom = Chatroom.new(hike: hike52)
hike52_chatroom.save!

hike53 = Hike.new(
  title: "Cape Town Car Road Track",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "South Africa",
  date: DateTime.new(2022, 11, 12),
  user_id: user2.id,
  duration: "1 day",
  buddy: "kid",
  level: "beginner",
  terrain: "hills",
  language: "english",
  length: "11"
)
hike53.save!
hike53_chatroom = Chatroom.new(hike: hike53)
hike53_chatroom.save!

hike54 = Hike.new(
  title: "Kangaroo Island Wilderness Trail",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "Sidney, Australia",
  date: DateTime.new(2022, 11, 12),
  user_id: user2.id,
  duration: "multiple days",
  buddy: "kid",
  level: "beginner",
  terrain: "hills",
  language: "english",
  length: "9"
)
hike54.save!
hike54_chatroom = Chatroom.new(hike: hike54)
hike54_chatroom.save!

hike55 = Hike.new(
  title: "Grand Loop Trail",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "Novosibirsk, Russia",
  date: DateTime.new(2022, 11, 12),
  user_id: user2.id,
  duration: "multiple days",
  buddy: "dog",
  level: "expert",
  terrain: "mountains",
  language: "english",
  length: "30"
)
hike55.save!
hike55_chatroom = Chatroom.new(hike: hike55)
hike55_chatroom.save!

hike44 = Hike.new(
  title: "Solovetsky Islands",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "Arkhangelsk Oblast, Russia.",
  date: DateTime.new(2022, 9, 30),
  user_id: user2.id,
  duration: "1 day",
  level: "intermediate",
  terrain: "flat",
  language: "english",
  length: "10"
)
hike44.save!
hike44_chatroom = Chatroom.new(hike: hike44)
hike44_chatroom.save!

hike45 = Hike.new(
  title: "Exploring the Dutch landscape",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "Het Twiske, Netherlands",
  date: DateTime.new(2022, 11, 21),
  user_id: user2.id,
  duration: "1 day",
  buddy: "kid",
  level: "beginner",
  terrain: "flat",
  language: "english",
  length: "10"
)
hike45.save!
hike45_chatroom = Chatroom.new(hike: hike45)
hike45_chatroom.save!

hike46 = Hike.new(
  title: "Exploring the Dutch landscape",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "IJIst, Netherlands",
  date: DateTime.new(2022, 11, 30),
  user_id: user2.id,
  duration: "1 day",
  buddy: "dog",
  level: "beginner",
  terrain: "flat",
  language: "english",
  length: "8"
)
hike46.save!
hike46_chatroom = Chatroom.new(hike: hike46)
hike46_chatroom.save!

hike47 = Hike.new(
  title: "Camino de Santiago",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "Galicia, Spain",
  date: DateTime.new(2022, 10, 25),
  user_id: user2.id,
  duration: "multiple days",
  buddy: "dog",
  level: "intermediate",
  terrain: "hills",
  language: "english",
  length: "20"
)
hike47.save!
hike47_chatroom = Chatroom.new(hike: hike47)
hike47_chatroom.save!


hike49 = Hike.new(
  title: "Monte Cavo Summit",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "Frascati, Italy",
  date: DateTime.new(2022, 10, 31),
  user_id: user2.id,
  duration: "1 day",
  buddy: "dog",
  level: "beginner",
  terrain: "mountains",
  language: "english",
  length: "12"
)
hike49.save!
hike49_chatroom = Chatroom.new(hike: hike49)
hike49_chatroom.save!

hike50 = Hike.new(
  title: "Highlands Circuit",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "Glasgow, Scotland",
  date: DateTime.new(2022, 10, 5),
  user_id: user2.id,
  duration: "1 day",
  buddy: "dog",
  level: "intermediate",
  terrain: "mountains",
  language: "english",
  length: "17"
)
hike50.save!
hike50_chatroom = Chatroom.new(hike: hike50)
hike50_chatroom.save!

hike51 = Hike.new(
  title: "Palenica Białczańska Track",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "Tatra National Park, Poland",
  date: DateTime.new(2022, 11, 12),
  user_id: user2.id,
  duration: "1 day",
  buddy: "dog",
  level: "beginner",
  terrain: "mountains",
  language: "english",
  length: "13"
)
hike51.save!
hike51_chatroom = Chatroom.new(hike: hike51)
hike51_chatroom.save!

hike48 = Hike.new(
  title: "Lagorai Loop Track",
  description: "The Brent Crater was formed when a meteorite crashed to earth thousands of years ago. From a wooden observation tower overlooking the crater, the trail descends to the crater floor before looping back to the starting point. Six interpretive stops relate some of the geological and historical significance of this unique feature. This trail is accessed from the Brent Campground.",
  location: "Trento, Italy",
  date: DateTime.new(2022, 9, 20),
  user_id: user2.id,
  duration: "1 day",
  buddy: "dog",
  level: "intermediate",
  terrain: "mountains",
  language: "english",
  length: "11"
)
hike48.save!
hike48_chatroom = Chatroom.new(hike: hike48)
hike48_chatroom.save!

puts "All done!"

# one day hikes
HikeTag.create!(hike: hike1, tag: one_day_tag)
HikeTag.create!(hike: hike3, tag: one_day_tag)
HikeTag.create!(hike: hike4, tag: one_day_tag)
HikeTag.create!(hike: hike6, tag: one_day_tag)
HikeTag.create!(hike: hike8, tag: one_day_tag)
HikeTag.create!(hike: hike9, tag: one_day_tag)

# dog friendly hikes
HikeTag.create!(hike: hike1, tag: dog_tag)
HikeTag.create!(hike: hike2, tag: dog_tag)
HikeTag.create!(hike: hike4, tag: dog_tag)
HikeTag.create!(hike: hike7, tag: dog_tag)
HikeTag.create!(hike: hike8, tag: dog_tag)
HikeTag.create!(hike: hike10, tag: dog_tag)

# level hikes
HikeTag.create!(hike: hike1, tag: beginner_tag)
HikeTag.create!(hike: hike3, tag: beginner_tag)
HikeTag.create!(hike: hike5, tag: beginner_tag)
HikeTag.create!(hike: hike7, tag: beginner_tag)
HikeTag.create!(hike: hike8, tag: beginner_tag)
HikeTag.create!(hike: hike10, tag: beginner_tag)

#terrain type
HikeTag.create!(hike: hike1, tag: mountain_tag)
HikeTag.create!(hike: hike2, tag: hill_tag)
HikeTag.create!(hike: hike3, tag: hill_tag)
HikeTag.create!(hike: hike4, tag: hill_tag)
HikeTag.create!(hike: hike5, tag: hill_tag)
HikeTag.create!(hike: hike6, tag: mountain_tag)
HikeTag.create!(hike: hike7, tag: mountain_tag)
HikeTag.create!(hike: hike8, tag: mountain_tag)
HikeTag.create!(hike: hike10, tag: mountain_tag)

# eng speaking
HikeTag.create!(hike: hike1, tag: english_tag)
HikeTag.create!(hike: hike3, tag: english_tag)
HikeTag.create!(hike: hike7, tag: english_tag)
HikeTag.create!(hike: hike8, tag: english_tag)
HikeTag.create!(hike: hike9, tag: english_tag)
HikeTag.create!(hike: hike10, tag: english_tag)
