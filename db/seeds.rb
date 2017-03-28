require "faker"

puts "Cleaning database..."
Follower.destroy_all
Stage.destroy_all
Teddy.destroy_all
User.destroy_all

puts "Creating users..."
bob = User.create!(
  name: "Bob",
  email: "bob@gmail.com",
  password: "123456"
  )
bob.photos = [File.open(Rails.root.join('db/fixtures/images/user_bob.jpg'))]
  bob.save!
aurel = User.create!(
  name: "Aurel",
  email: "aurel@gmail.com",
  password: "123456"
  )
aurel.photos = [File.open(Rails.root.join('db/fixtures/images/user_aurel.jpg'))]
  aurel.save!
alain = User.create!(
  name: "Alain",
  email: "alain@gmail.com",
  password: "123456"
  )
alain.photos = [File.open(Rails.root.join('db/fixtures/images/user_alain.jpg'))]
  alain.save!
helo = User.create!(
  name: "Helo",
  email: "helo@gmail.com",
  password: "123456"
  )
helo.photos = [File.open(Rails.root.join('db/fixtures/images/user_helo.jpg'))]
  helo.save!
jordan = User.create!(
  name: "Jordan",
  email: "jordan@gmail.com",
  password: "123456"
  )
jordan.photos = [File.open(Rails.root.join('db/fixtures/images/user_jordan.jpg'))]
  jordan.save!
thomas = User.create!(
  name: "Thomas",
  email: "thomas@gmail.com",
  password: "123456"
  )
thomas.photos = [File.open(Rails.root.join('db/fixtures/images/user_thomas.jpg'))]
  thomas.save!


puts "Creating Teddies..."
teddy_bozo = Teddy.create!(
  name: "Bozo",
  description: "Bozo is crative project from an great artist called Bob. Bozo has been sent travelling to communicate happiness and love. He's creating links between people all over the world. If one day you meet Bozo somewhere, it will be your lucky day",
  user: bob,
  gender: "other"
  origin: "jamaïca"
  personality: "creative"
  )
teddy_bozo.photos = [File.open(Rails.root.join('db/fixtures/images/teddy_bozo.jpg'))]
  teddy_bozo.save!
teddy_choupi = Teddy.create!(
  name: "Choupi",
  description: "Choupi has been sent by Aurel and her class of twenty childs. Choupi is a new teaching tool that helps Aurel to speack about geography and culture with her class. They want to discover Europe and they are all really thanksfull to all the travellers that helps Choupi to travel trought all those countries",
  user: aurel,
  gender: "male"
  origin: "bruxelles"
  personality: "generous"
  )
teddy_choupi.photos = [File.open(Rails.root.join('db/fixtures/images/teddy_choupi.jpg'))]
  teddy_choupi.save!
teddy_pinou = Teddy.create!(
  name: "Pinou",
  description: "Pinou is an entrepreneur! He as been sent by Alain from HEC Paris. Pinou is supose to communicate about entreprise created by HEC entrepreneur, the oldest and greatest entreprneurial school in the world. Pinou is going to visit San Francisco and all california before flying to Cuba with students to finaly travel the worl with the flow",
  user: alain,
  gender: "male"
  origin: "Jouy-en-Josas"
  personality: "ambitious"
  )
teddy_pinou.photos = [File.open(Rails.root.join('db/fixtures/images/teddy_pinou.jpg'))]
  teddy_pinou.save!
teddy_bayon = Teddy.create!(
  name: "Bayon",
  description: "Bayon is from Angkor's Temples, where a beautiful project existe since 20 years. A great association named 'école du Bayon' is teaching hundreds of child and teenager and young adult usefull skills to help them finding a job. They started as a primary school and the school is a reference in Cambodia for the quality of their student. Since the creation, the school helps more than a thousand people to escape misary", 
  user: thomas,
  gender: "female"
  origin: "Siem Reap"
  personality: "helpful"
  )
teddy_bayon.photos = [File.open(Rails.root.join('db/fixtures/images/teddy_bayon.jpg'))]
  teddy_bayon.save!
teddy_cousteau = Teddy.create!(
  name: "Cousteau",
  description: "Cousteau is the greatest sailor of all time and his teddy form the same name is here to perpetuate his memory. Send form Antigua in the Caribbean, his going to cross Atlantic to Cap Vert with Jordan! Then, he's gonna jump on an other boat and continue saling for ever",
  user: jordan,
  gender: "male"
  origin: "Antigua"
  personality: "courageous"
  )
teddy_cousteau.photos = [File.open(Rails.root.join('db/fixtures/images/teddy_cousteau.jpg'))]
  teddy_cousteau.save!
teddy_potam = Teddy.create!(
  name: "Potam",
  description: "Potam is a cute little hipopotam sent by a little girl that always dreams to travel the world. Before she gets older and big enough to be on her own, Hélo decided to send her besfriend, Potam, to travel and show her the most beautiful nauture on this planet",
  user: helo,
  gender: "male"
  origin: "Paris"
  personality: "friendly"
  )
teddy_potam.photos = [File.open(Rails.root.join('db/fixtures/images/teddy_potam.jpg'))]
  teddy_potam.save!

puts "Creating Bozo's Stages"

jamaïca = Stage.new(
      date: Wed, 1 Mar 2017,
      content: "",
      backpacker_name: "Clément Fernon",
      backpacker_description: "I'm travelling since 8 mounths in South America. I was working in a bank for 10 years in London when I realised that I was loosing my time in this crazy world. I will continue travelling few mounths and then I'd like to come back in London, work in an NGO and do yoga",
      backpacker_origin: "Antony",
      crush: "Cockpit Country is a beautiful park in center of Jamaïca, there are lovely trees and amazing animals",
      backpacker_email: clement@gmail.com
      adress: "Jamaïca",
      teddy: teddy_bozo
    )
    jamaïca.save!
jamaïca.photos = [File.open(Rails.root.join('db/fixtures/images/stage_jamaïca.jpg'))]
    jamaïca.save!
bogota = Stage.new(
      date: Mon, 6 Mar 2017,
      content: "",
      backpacker_name: "Clément Fernon",
      backpacker_description: "I'm travelling since 8 mounths in South America. I was working in a bank for 10 years in London when I realised that I was loosing my time in this crazy world. I will continue travelling few mounths and then I'd like to come back in London, work in an NGO and do yoga",
      backpacker_origin: "Antony",
      crush: "Ajiaco is a really tasty chicken soup typical from Colombia",
      backpacker_email: clement@gmail.com
      adress: "Bogota, Colombia",
      teddy: teddy_bozo
    )
    bogota.save!
cali = Stage.new(
      date: Sun, 12 Mar 2017,
      content: "",
      backpacker_name: "Quentin Gondat",
      backpacker_description: "Few weeks off, I love trekking and Hiking, I have been 7 times in South America and I don't get bored. Thanks to Bozo to share a part of the trip with me and thanks to Clement I met in Bogota, we had an amazing night there!",
      backpacker_origin: "Bordeau",
      crush: "Salsa ! definitly The Thing to see in Cali !",
      backpacker_email: quentin@gmail.com
      adress: "Cali, Colombia",
      teddy: teddy_bozo
    )
    cali.save!
cuzco = Stage.new(
      date: Sun, 19 Mar 2017,
      content: "",
      backpacker_name: "Quentin Gondat",
      backpacker_description: "Few weeks off, I love trekking and Hiking, I have been 7 times in South America and I don't get bored. Thanks to Bozo to share a part of the trip with me and thanks to Clement I met in Bogota, we had an amazing night there!",
      backpacker_origin: "Bordeau",
      crush: "Machu Picchu",
      backpacker_email: quentin@gmail.com
      adress: "Cuzco, Peru",
      teddy: teddy_bozo
    )
    cuzco.save!

puts "Creating Choupi's Stages"

bruxelles = Stage.new(
  date: Wed, 1 Mar 2017,
  content: "",
  backpacker_name: "Jimmy",
  backpacker_description: "",
  backpacker_origin: "Bruxelles",
  crush: "Waffles & Speculos, so tasty!",
  backpacker_email: jimmy@gmail.com
  adress: "Bruxelles",
  teddy: teddy_choupi
)
bruxelles.save!

berlin = Stage.new(
  date: Wed, 8 Mar 2017,
  content: "",
  backpacker_name: "Jimmy",
  backpacker_description: "",
  backpacker_origin: "Berlin, Germany",
  crush: "Waffles & Speculos, so tasty!",
  backpacker_email: jimmy@gmail.com
  adress: "Berlin, Germany",
  teddy: teddy_choupi
)
berlin.save!

warsaw = Stage.new(
  date: Wed, 15 Mar 2017,
  content: "",
  backpacker_name: "Henning",
  backpacker_description: "",
  backpacker_origin: "Bruxelles",
  crush: "Waffles & Speculos, so tasty!",
  backpacker_email: henning@gmail.com
  adress: "Warsaw, Poland",
  teddy: teddy_choupi
)
warsaw.save!

praga = Stage.new(
  date: Wed, 22 Mar 2017,
  content: "",
  backpacker_name: "Henning",
  backpacker_description: "",
  backpacker_origin: "Bruxelles",
  crush: "Waffles & Speculos, so tasty!",
  backpacker_email: henning@gmail.com
  adress: "Praga, Czech Republic",
  teddy: teddy_choupi
)
praga.save!

puts "Creating Pinou's Stages"

jouy = Stage.new(
  date: Wed, 15 Fev 2017,
  content: "XXXXXXX",
  backpacker_name: "Alain",
  backpacker_description: "XXXXXXX",
  backpacker_origin: "Paris",
  crush: "HEC - bat H, Beautiful building made by the famous architect Martin Duplantier",
  backpacker_email: alain@gmail.com
  adress: "Jouy-en-Josas, France",
  teddy: teddy_pinou
)
jouy.save!
cdg = Stage.new(
  date: Wed, 22 Fev 2017,
  content: "XXXXXXX",
  backpacker_name: "Alain",
  backpacker_description: "XXXXXXX",
  backpacker_origin: "Paris",
  crush: "XXXXXXX",
  backpacker_email: alain@gmail.com
  adress: "Aeroport Charles de Gaulle, France",
  teddy: teddy_pinou
)
cdg.save!
sf = Stage.new(
  date: Wed, 1 Mar 2017,
  content: "XXXXXXX",
  backpacker_name: "Alain",
  backpacker_description: "XXXXXXX",
  backpacker_origin: "Paris",
  crush: "Bridge",
  backpacker_email: alain@gmail.com
  adress: "San Francisco, USA",
  teddy: teddy_pinou
)
sf.save!
la = Stage.new(
  date: Wed, 8 Mar 2017,
  content: "XXXXXXX",
  backpacker_name: "John",
  backpacker_description: "XXXXXXX",
  backpacker_origin: "Montreal, Canada",
  crush: "XXXXXXX",
  backpacker_email: john@gmail.com
  adress: "Los Angeles, USA",
  teddy: teddy_pinou
)
la.save!
no = Stage.new(
  date: Wed, 15 Mar 2017,
  content: "XXXXXXX",
  backpacker_name: "John",
  backpacker_description: "XXXXXXX",
  backpacker_origin: "Montreal, Canada",
  crush: "XXXXXXX",
  backpacker_email: john@gmail.com
  adress: "New Orleans, USA",
  teddy: teddy_pinou
)
no.save!

puts "Creating Bayon's Stages"

siemreap = Stage.new(
  date: Wed, 15 Fev 2017,
  content: "XXXXXXX",
  backpacker_name: "Thomas",
  backpacker_description: "XXXXXXX",
  backpacker_origin: "Paris",
  crush: "XXXXXXX",
  backpacker_email: thomas@gmail.com
  adress: "Siem Reap, Cambodia",
  teddy: teddy_bayon
)
siemreap.save!
phnompenh = Stage.new(
  date: Wed, 22 Fev 2017,
  content: "XXXXXXX",
  backpacker_name: "Thomas",
  backpacker_description: "XXXXXXX",
  backpacker_origin: "Paris",
  crush: "XXXXXXX",
  backpacker_email: thomas@gmail.com
  adress: "Phnom Penh, Cambodia",
  teddy: teddy_bayon
)
phnompenh.save!

hcm = Stage.new(
  date: Wed, 1 Mar 2017,
  content: "XXXXXXX",
  backpacker_name: "Boris",
  backpacker_description: "XXXXXXX",
  backpacker_origin: "Marseilles",
  crush: "Poste Eiffel",
  backpacker_email: boris@gmail.com
  adress: "Ho Chi Minh, Vietnam",
  teddy: teddy_bayon
)
hcm.save!

hoian = Stage.new(
  date: Wed, 8 Mar 2017,
  content: "XXXXXXX",
  backpacker_name: "Boris",
  backpacker_description: "XXXXXXX",
  backpacker_origin: "Marseilles",
  crush: "XXXXXXX",
  backpacker_email: boris@gmail.com
  adress: "Hoi An, Vietnam",
  teddy: teddy_bayon
)
hoian.save!

catba = Stage.new(
  date: Wed, 15 Mar 2017,
  content: "XXXXXXX",
  backpacker_name: "Martin",
  backpacker_description: "XXXXXXX",
  backpacker_origin: "South Africa",
  crush: "XXXXXXX",
  backpacker_email: martin@gmail.com
  adress: "Catba, Vietnam",
  teddy: teddy_bayon
)
catba.save!
sapa = Stage.new(
  date: Wed, 22 Mar 2017,
  content: "XXXXXXX",
  backpacker_name: "Martin",
  backpacker_description: "XXXXXXX",
  backpacker_origin: "South Africa",
  crush: "Hmongs are very friendly !",
  backpacker_email: martin@gmail.com
  adress: "Sapa, Vietnam",
  teddy: teddy_bayon
)
sapa.save!

puts "Creating Cousteau's Stages"

marquises = Stage.new(
  date: Mer, 6 Jan 2016,
  content: "XXXXXXX",
  backpacker_name: "Jordan",
  backpacker_description: "XXXXXXX",
  backpacker_origin: "Bretagne, France",
  crush: "XXXXXXX",
  backpacker_email: jordan@gmail.com
  adress: "Marquises, Polynésie Française",
  teddy: teddy_cousteau
)
marquises.save!
tahiti = Stage.new(
  date: Mer, 17 Jan 2016,
  content: "XXXXXXXX",
  backpacker_name: "Jordan",
  backpacker_description: "XXXXXXX",
  backpacker_origin: "Bretagne, France",
  crush: "XXXXXXX",
  backpacker_email: jordan@gmail.com
  adress: "Papeete, Polynésie Française",
  teddy: teddy_cousteau
)
tahiti.save!
ushuaia = Stage.new(
  date: Wed, 23 Mar 2016,
  content: "XXXXXXX",
  backpacker_name: "Jordan",
  backpacker_description: "XXXXXXX",
  backpacker_origin: "Bretagne, France",
  crush: "XXXXXXX",
  backpacker_email: jordan@gmail.com
  adress: "Ushuaia, Argentina",
  teddy: teddy_cousteau
)
ushuaia.save!
alexander = Stage.new(
  date: Wed, 8 Jun 2016,
  content: "",
  backpacker_name: "Jordan",
  backpacker_description: "XXXXXXX",
  backpacker_origin: "Bretagne, France",
  crush: "XXXXXXX",
  backpacker_email: jordan@gmail.com
  adress: "alexander island",
  teddy: teddy_cousteau
)
alexander.save!
pde = Stage.new(
  date: Wed, 16 Nov 2016,
  content: "",
  backpacker_name: "Jordan",
  backpacker_description: "XXXXXXX",
  backpacker_origin: "Bretagne, France",
  crush: "XXXXXXX",
  backpacker_email: jordan@gmail.com
  adress: "Punta Del Este, Urugay",
  teddy: teddy_cousteau
)
pde.save!
antigua = Stage.new(
  date: Wed, 15 Fev 2017,
  content: "",
  backpacker_name: "Jordan",
  backpacker_description: "XXXXXXX",
  backpacker_origin: "Bretagne, France",
  crush: "XXXXXXX",
  backpacker_email: jordan@gmail.com
  adress: "Antigua",
  teddy: teddy_cousteau
)
antigua.save!

puts "Creating Potam's Stages"

paris = Stage.new(
  date: Wed, 15 Fev 2017,
  content: "",
  backpacker_name: "Helo",
  backpacker_description: "XXXXXXX",
  backpacker_origin: "Ville d'Avray, France",
  crush: "XXXXXXX",
  backpacker_email: helo@gmail.com
  adress: "Paris, France",
  teddy: teddy_potam
)
paris.save!

paris = Stage.new(
  date: Wed, 15 Fev 2017,
  content: "",
  backpacker_name: "Helo",
  backpacker_description: "XXXXXXX",
  backpacker_origin: "Ville d'Avray, France",
  crush: "XXXXXXX",
  backpacker_email: helo@gmail.com
  adress: "Paris, France",
  teddy: teddy_potam
)
paris.save!

barcelone = Stage.new(
  date: Wed, 15 Fev 2017,
  content: "",
  backpacker_name: "Robert Wong",
  backpacker_description: "XXXXXXX",
  backpacker_origin: "Melun, France",
  crush: "XXXXXXX",
  backpacker_email: robert@gmail.com
  adress: "barcelona, Spain",
  teddy: teddy_potam
)
barcelone.save!

marrakech = Stage.new(
  date: Wed, 15 Fev 2017,
  content: "",
  backpacker_name: "Robert Wong",
  backpacker_description: "XXXXXXX",
  backpacker_origin: "Melun, France",
  crush: "XXXXXXX",
  backpacker_email: robert@gmail.com
  adress: "marrakech, Marocco",
  teddy: teddy_potam
)
marrakech.save!

puts "Finished!"


