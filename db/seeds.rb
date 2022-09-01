
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
multiple_days_tag = Tag.new(name: "multiple days")
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
  title: "Bald Mountain Summit Loop",
  description: "25km. You can head to the south end of the trailhead parking lot to begin
  on the Switzerland Trail OHV road (FS 120J) or follow a short connector trail next
  to the trailhead sign that passes by a few campsites before connecting with the
  Switzerland Trail OHV road. The Switzerland Trail OHV road is slightly downhill or
  flat from the trailhead to where it intersects with the east end of the Bald Mountain Trail.
  It is then slightly uphill or flat from that point to where it intersects with the west
  end of the Bald Mountain Trail. The road is wide and rocky with some uneven and loose
  footing in places. It is fairly exposed and can be dusty if it hasn't rained or snowed for
  a bit. You can keep up a good, quick pace along the road, however, as the inclines are moderate
  and there's plenty of room to step around or over any obstacles. If you are running at a
  peak time you are likely to encounter a fair number of off-road vehicles on the road.
  There's plenty of room to pass, although the dust and noise may be an issue for some people.",
  location: "Engelberg, Switzerland",
  date: DateTime.new(2022, 9, 9),
  user_id: user1.id
)
file = URI.open("app/assets/images/hikepictures/dorothea-oldani-ANG04nEhp3U-unsplash.jpg")
file2 = URI.open("app/assets/images/hikepictures/janis-wolf-vfmNDJQDoMM-unsplash.jpg")
file3 = URI.open("app/assets/images/hikepictures/xavier-von-erlach-z6LR8pafdaQ-unsplash.jpg")
hike1.photos.attach(io: file, filename: "hike.png", content_type: "image/png")
hike1.photos.attach(io: file2, filename: "hike.png", content_type: "image/png")
hike1.photos.attach(io: file3, filename: "hike.png", content_type: "image/png")
hike1.save!

hike2 = Hike.new(
  title: "Teufelsschlucht Belchen",
  description: "17 km. Diese abwechslungsreiche Wanderung führt durch interessante Gebiete,
  wie sie für den Jura typisch sind:
  Schlucht, Wälder, Weiden und Felsgrat. Nach dem einmaligen Ausblick von
  der Belchenflue und dem Abstieg durch Wälder und über Wiesen lockt die Stadt
  Olten mit einer Rast an der Aare.
  Startort dieser Wanderung ist Hägendorf, eines der Industriedörfer im Gäu.
  Der wilde Cholersbach, hat die Tüfelsschlucht tief in das Juragestein eingefressen.
  Steile Felswände, Grotten, Höhlen und Strudellöcher sind so entstanden.
  Der Weg schlängelt sich dem wilden Bach entlang vorbei an märchenhaften Moosfelsen
  und der natürlichen Wasserfontaine «Spitzbrunnen».",
  location: "Hägendorf-Olten, Switzerland",
  date: DateTime.new(2022, 9, 14),
  user_id: user2.id
)
hike2.save!

hike3 = Hike.new(
  title: "Suhrer Chopf",
  description: "6 km. Intermediate Hiking Tour. Good fitness required. Easily-accessible paths.
  Suitable for all skill levels. The starting point of the Tour is accessible with public transport.",
  location: "Suhr, Aarau, Aargau, Switzerland",
  date: DateTime.new(2022, 9, 14),
  user_id: user3.id
)
hike3.save!

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
  user_id: user4.id
)
hike4.save!

hike5 = Hike.new(
  title: "Hasenhornturm",
  description: "23 km. The Hasenhorn Tower stands on the 1,155 meter high Hasenhorn,
  not far from the city of Todtnau.
  The 21 meter high tower was built from old Douglas fir trunks that were cut in the Todtnauer city forest.
  From the viewing platform at a height of 15 meters,
  you can enjoy a magnificent panoramic view of 23 Black Forest peaks.",
  location: "Todtnau, Germany",
  date: DateTime.new(2022, 9, 11),
  user_id: user1.id
)
hike5.save!

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
  user_id: user2.id
)
hike6.save!

hike7 = Hike.new(
  title: "Hohenkrähen",
  description: "12km. On a more than 600 meters high and steeply sloping volcanic
  cone towers the ruin Hohenkrähen above Schlatt.
  The way up is actually quite narrow and meanders right up the cliff face up to the castle ruin.
  For the rocky ascent you will be rewarded with a fantastic view and an exciting castle ruin.",
  location: "Hilzingen, Germany",
  date: DateTime.new(2022, 9, 10),
  user_id: user3.id
)
hike7.save!

hike8 = Hike.new(
  title: "Mont Veyrier",
  description: "16km. Mont Veyrier rises to 1,291 meters above sea level.
  It is a magnificent summit, from which we have a very beautiful view of
  Annecy and its lake.
  One of the two peaks on the northeast side of the Annecy lake (at 1291 m).
  Marked by a wooden sign and a big stone man.",
  location: "Haute-Savoie, France",
  date: DateTime.new(2022, 9, 8),
  user_id: user4.id
)
hike8.save!

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
  user_id: user1.id
)
hike9.save!

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
  user_id: user2.id
)
hike10.save!

puts "All done!"
