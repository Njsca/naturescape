

puts "Destroying seeds"
User.destroy_all
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
user4.save!

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

hike1 = Hike.new(
  title: "Vallée de Joux",
  description: "25km/day. Katherine here, I grew up in the heart of the Vallée de Joux in Switzerland and I am planning a lovely hike from du Col du Marchairuz. On the first day, we will leave early in the morning and hike up to the Mont-Tendre summit where we’ll cook a traditional “moitié-moitié” cheese fondue and admire a 360° view of the Leman Lake, the Vallée and France before heading up to a mountain cottage for the night. On the second day, we will reach the lake “de Joux” and spend the night in camping in the woods and hike our way back to our starting point the next morning.
  Lenny, my four-legged furry best buddy follows me on every adventure so I would love to meet other dog owners!",
  location: "Col du Marchairuz, Switzerland",
  date: DateTime.new(2022, 9, 9),
  user_id: user1.id,
  duration: "multiple days",
  buddy: "dog",
  level: "beginner",
  terrain: "mountains",
  language: "english",
  length: "7"
)
hike1.save!
hike1_chatroom = Chatroom.new(hike: hike1)
hike1_chatroom.save!

file = File.open("app/assets/images/dorothea-oldani-ANG04nEhp3U-unsplash.jpg")
file2 = File.open("app/assets/images/janis-wolf-vfmNDJQDoMM-unsplash.jpg")
# file3 = File.open("app/assets/images/xavier-von-erlach-z6LR8pafdaQ-unsplash.jpg")
hike1.photos.attach(io: file, filename: "hike.png", content_type: "image/png")
hike1.photos.attach(io: file2, filename: "hike.png", content_type: "image/png")
# hike1.photos.attach(io: file3, filename: "hike.png", content_type: "image/png") too large

hike2 = Hike.new(
  title: "5 Lakes Walk",
  description: "17km/day. The path leads past the lakes of the Stellisee, Grindjisee, Grünsee, Moosjisee and Leisee. Each of these mountain lakes is very different in terms of shape, colour, character and size, and has its own special attraction. The Leisee is good for swimming: children love it. The Grünsee looks out over a rather more rugged landscape, where Swiss stone pines nevertheless manage to grow among the scree and sand. The shores of the Grindjisee are home to rare flowers. And so on – each one promises a unique experience.",
  location: "Zermatt, Switzerland",
  date: DateTime.new(2022, 9, 14),
  user_id: user2.id,
  duration: "1 day",
  buddy: "dog",
  level: "intermediate",
  terrain: "mountains",
  length: "10"
)
hike2.save!
hike2_chatroom = Chatroom.new(hike: hike2)
hike2_chatroom.save!

hike3 = Hike.new(
  title: "Tour du Mont-Blanc",
  description: "The Tour du Mont Blanc is a system of hiking trails that covers 170 kilometers, with many different starting points, including Courmayeur, Les Houches, and Chamonix. Along the way, mountain refuges (mostly dormitory-style accommodations) allow hikers to rest and get refreshments or refuel with a hearty meal and stay overnight in cozy Alpine lodgings.",
  location: "Chamonix, France",
  date: DateTime.new(2022, 9, 14),
  user_id: user3.id,
  duration: "multiple-days",
  buddy: "dog",
  level: "intermediate",
  terrain: "hills",
  language: "english",
  length: "15"
)
hike3.save!
hike3_chatroom = Chatroom.new(hike: hike3)
hike3_chatroom.save!

hike4 = Hike.new(
  title: "Ruine Homburg",
  description: "8 km. The Homburg ruin, also called Neu-Homberg, is located in the
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
  length: "5,"
)
hike4.save!
hike4_chatroom = Chatroom.new(hike: hike4)
hike4_chatroom.save!

hike5 = Hike.new(
  title: "Hasenhornturm",
  description: "23 km. The Hasenhorn Tower stands on the 1,155 meter high Hasenhorn,
  not far from the city of Todtnau.
  The 21 meter high tower was built from old Douglas fir trunks that were cut in the Todtnauer city forest.
  From the viewing platform at a height of 15 meters,
  you can enjoy a magnificent panoramic view of 23 Black Forest peaks.",
  location: "Todtnau, Germany",
  date: DateTime.new(2022, 9, 11),
  user_id: user1.id,
  duration: "multiple-days",
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
  description: "18km. The Bildsteinfelsen can be hiked from almost all directions.
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
  length: "6"

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
  duration: "multiple-days",
  buddy: "kid",
  buddy: "dog",
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
  description: "16km. Mont Veyrier rises to 1,291 meters above sea level.
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
  length: "9"
)
hike8.save!
hike8_chatroom = Chatroom.new(hike: hike8)
hike8_chatroom.save!

hike9 = Hike.new(
  title: "Puy de Dôme",
  description: "9km. A decent hike up Puy de Dome, the highest peak in the
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
  length: "7"
)
hike9.save!
hike9_chatroom = Chatroom.new(hike: hike9)
hike9_chatroom.save!

hike10 = Hike.new(
  title: "Passerelle du Monteynard (Ebron)",
  description: "26km. Lac de Monteynard-Avignonet is an artificial water reservoir
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
  length: "5"
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
  length: "4"
)
hike12.save!
hike12_chatroom = Chatroom.new(hike: hike12)
hike12_chatroom.save!

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
