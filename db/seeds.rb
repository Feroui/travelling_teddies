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
christian = User.create!(
  name: "christian",
  email: "christian@gmail.com",
  password: "123456"
  )
christian.photos = [File.open(Rails.root.join('db/fixtures/images/user_christian.jpg'))]
  christian.save!


puts "Creating Teddies..."
teddy_ross = Teddy.create!(
  name: "Ross",
  description: "Our son is going to have a baby so we decide to send a teddy travelling around the word for him! He is going to have a best friend travelling and maybe one day, he's going to join him and travel has their grand-parents do",
  user: christian,
  gender: "male",
  origin: "Berlin",
  personality: "creative"
  )
teddy_ross.photos = [File.open(Rails.root.join('db/fixtures/images/teddy_ross.jpg'))]
  teddy_ross.save!
teddy_bozo = Teddy.create!(
  name: "Bozo",
  description: "Bozo is crative project from an great artist called Bob. Bozo has been sent travelling to communicate happiness and love. He's creating links between people all over the world. If one day you meet Bozo somewhere, it will be your lucky day",
  user: bob,
  gender: "other",
  origin: "jamaïca",
  personality: "creative"
  )
teddy_bozo.photos = [File.open(Rails.root.join('db/fixtures/images/teddy_bozo.jpg'))]
  teddy_bozo.save!
teddy_choupi = Teddy.create!(
  name: "Choupi",
  description: "Choupi has been sent by Aurel and her class of twenty childs. Choupi is a new teaching tool that helps Aurel to speack about geography and culture with her class. They want to discover Europe and they are all really thanksfull to all the travellers that helps Choupi to travel trought all those countries",
  user: aurel,
  gender: "male",
  origin: "bruxelles",
  personality: "generous"
  )
teddy_choupi.photos = [File.open(Rails.root.join('db/fixtures/images/teddy_choupi.jpg'))]
  teddy_choupi.save!
teddy_bayon = Teddy.create!(
  name: "Bayon",
  description: "Bayon is from Angkor's Temples, where a beautiful project existe since 20 years. A great association named 'école du Bayon' is teaching hundreds of child and teenager and young adult usefull skills to help them finding a job. They started as a primary school and the school is a reference in Cambodia for the quality of their student. Since the creation, the school helps more than a thousand people to escape misary",
  user: thomas,
  gender: "female",
  origin: "Siem Reap",
  personality: "helpful"
  )
teddy_bayon.photos = [File.open(Rails.root.join('db/fixtures/images/teddy_bayon.jpg'))]
  teddy_bayon.save!
teddy_cousteau = Teddy.create!(
  name: "Cousteau",
  description: "Cousteau is the greatest sailor of all time and his teddy form the same name is here to perpetuate his memory. Send form Antigua in the Caribbean, his going to cross Atlantic to Cap Vert with Jordan! Then, he's gonna jump on an other boat and continue saling for ever",
  user: jordan,
  gender: "male",
  origin: "Antigua",
  personality: "courageous"
  )
teddy_cousteau.photos = [File.open(Rails.root.join('db/fixtures/images/teddy_cousteau.jpg'))]
  teddy_cousteau.save!
teddy_potam = Teddy.create!(
  name: "Potam",
  description: "Potam is a cute little hipopotam sent by a little girl that always dreams to travel the world. Before she gets older and big enough to be on her own, Hélo decided to send her besfriend, Potam, to travel and show her the most beautiful nauture on this planet",
  user: helo,
  gender: "male",
  origin: "Paris",
  personality: "friendly"
  )
teddy_potam.photos = [File.open(Rails.root.join('db/fixtures/images/teddy_potam.jpg'))]
  teddy_potam.save!

puts "Creating Bozo's Stages"

jamaïca = Stage.new(
      date: "Wed, 1 Mar 2017",
      content: Faker::Lorem.paragraph,
      backpacker_name: "Clément Fernon",
      backpacker_description: "I'm travelling since 8 mounths in South America. I was working in a bank for 10 years in London when I realised that I was loosing my time in this crazy world. I will continue travelling few mounths and then I'd like to come back in London, work in an NGO and do yoga",
      backpacker_origin: "Antony",
      crush: "Cockpit Country is a beautiful park in center of Jamaïca, there are lovely trees and amazing animals",
      backpacker_email: "clement@gmail.com",
      adress: "Jamaïca",
      teddy: teddy_bozo
    )
    jamaïca.save!
jamaïca.photos = [File.open(Rails.root.join('db/fixtures/images/stage_jamaïca_1.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_jamaïca_2.jpg'))]
    jamaïca.save!

bogota = Stage.new(
      date: "Mon, 6 Mar 2017",
      content: Faker::Lorem.paragraph,
      backpacker_name: "Clément Fernon",
      backpacker_description: "I'm travelling since 8 mounths in South America. I was working in a bank for 10 years in London when I realised that I was loosing my time in this crazy world. I will continue travelling few mounths and then I'd like to come back in London, work in an NGO and do yoga",
      backpacker_origin: "Antony",
      crush: "Ajiaco is a really tasty chicken soup typical from Colombia",
      backpacker_email: "clement@gmail.com",
      adress: "Bogota, Colombia",
      teddy: teddy_bozo
    )
    bogota.save!
bogota.photos = [File.open(Rails.root.join('db/fixtures/images/stage_bogota_1.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_bogota_2.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_bogota_3.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_bogota_4.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_bogota_5.jpg'))]
    bogota.save!


cali = Stage.new(
      date: "Sun, 12 Mar 2017",
      content: Faker::Lorem.paragraph,
      backpacker_name: "Quentin Gondat",
      backpacker_description: "Few weeks off, I love trekking and Hiking, I have been 7 times in South America and I don't get bored. Thanks to Bozo to share a part of the trip with me and thanks to Clement I met in Bogota, we had an amazing night there!",
      backpacker_origin: "Bordeau",
      crush: "Salsa ! definitly The Thing to see in Cali !",
      backpacker_email: "quentin@gmail.com",
      adress: "Cali, Colombia",
      teddy: teddy_bozo
    )
    cali.save!
cali.photos = [File.open(Rails.root.join('db/fixtures/images/stage_cali_1.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_cali_2.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_cali_3.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_cali_4.jpg'))]
    cali.save!

cuzco = Stage.new(
      date: "Sun, 19 Mar 2017",
      content: Faker::Lorem.paragraph,
      backpacker_name: "Quentin Gondat",
      backpacker_description: "Few weeks off, I love trekking and Hiking, I have been 7 times in South America and I don't get bored. Thanks to Bozo to share a part of the trip with me and thanks to Clement I met in Bogota, we had an amazing night there!",
      backpacker_origin: "Bordeau",
      crush: "Machu Picchu",
      backpacker_email: "quentin@gmail.com",
      adress: "Cuzco, Peru",
      teddy: teddy_bozo
    )
    cuzco.save!
cuzco.photos = [File.open(Rails.root.join('db/fixtures/images/stage_cuzco_1.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_cuzco_2.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_cuzco_3.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_cuzco_4.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_cuzco_5.jpg'))]
    cuzco.save!

puts "Creating Choupi's Stages"

bruxelles = Stage.new(
  date: "Wed, 1 Mar 2017",
  content: Faker::Lorem.paragraph,
  backpacker_name: "Jimmy",
  backpacker_description: Faker::Lorem.paragraph,
  backpacker_origin: "Bruxelles",
  crush: "Waffles & Speculos, so tasty!",
  backpacker_email: "jimmy@gmail.com",
  adress: "Bruxelles",
  teddy: teddy_choupi
)
bruxelles.save!
    bruxelles.save!
bruxelles.photos = [File.open(Rails.root.join('db/fixtures/images/stage_bruxelles_1.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_bruxelles_2.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_bruxelles_3.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_bruxelles_4.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_bruxelles_5.jpg'))]
    bruxelles.save!

berlin = Stage.new(
  date: "Wed, 8 Mar 2017",
  content: Faker::Lorem.paragraph,
  backpacker_name: "Jimmy",
  backpacker_description: Faker::Lorem.paragraph,
  backpacker_origin: "Berlin, Germany",
  crush: "Waffles & Speculos, so tasty!",
  backpacker_email: "jimmy@gmail.com",
  adress: "Berlin, Germany",
  teddy: teddy_choupi
)
berlin.save!
    berlin.save!
berlin.photos = [File.open(Rails.root.join('db/fixtures/images/stage_berlin_1.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_berlin_2.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_berlin_3.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_berlin_4.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_berlin_5.jpg'))]
    berlin.save!

warsaw = Stage.new(
  date: "Wed, 15 Mar 2017",
  content: Faker::Lorem.paragraph,
  backpacker_name: "Henning",
  backpacker_description: Faker::Lorem.paragraph,
  backpacker_origin: "Bruxelles",
  crush: "Waffles & Speculos, so tasty!",
  backpacker_email: "henning@gmail.com",
  adress: "Warsaw, Poland",
  teddy: teddy_choupi
)
warsaw.save!
    warsaw.save!
warsaw.photos = [File.open(Rails.root.join('db/fixtures/images/stage_warsaw_1.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_warsaw_2.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_warsaw_3.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_warsaw_4.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_warsaw_5.jpg'))]
    warsaw.save!

praga = Stage.new(
  date: "Wed, 22 Mar 2017",
  content: Faker::Lorem.paragraph,
  backpacker_name: "Henning",
  backpacker_description: Faker::Lorem.paragraph,
  backpacker_origin: "Bruxelles",
  crush: "Waffles & Speculos, so tasty!",
  backpacker_email: "henning@gmail.com",
  adress: "Praga, Czech Republic",
  teddy: teddy_choupi
)
praga.save!
    praga.save!
praga.photos = [File.open(Rails.root.join('db/fixtures/images/stage_praga_1.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_praga_2.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_praga_3.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_praga_4.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_praga_5.jpg'))]
    praga.save!


puts "Creating Bayon's Stages"

siemreap = Stage.new(
  date: "Wed, 15 Feb 2017",
  content: Faker::Lorem.paragraph,
  backpacker_name: "Thomas",
  backpacker_description: Faker::Lorem.paragraph,
  backpacker_origin: "Paris",
  crush: Faker::Lorem.paragraph,
  backpacker_email: "thomas@gmail.com",
  adress: "Siem Reap, Cambodia",
  teddy: teddy_bayon
)
siemreap.save!
    siemreap.save!
siemreap.photos = [File.open(Rails.root.join('db/fixtures/images/stage_siemreap_1.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_siemreap_2.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_siemreap_3.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_siemreap_4.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_siemreap_5.jpg'))]
    siemreap.save!
phnompenh = Stage.new(
  date: "Wed, 22 Feb 2017",
  content: Faker::Lorem.paragraph,
  backpacker_name: "Thomas",
  backpacker_description: Faker::Lorem.paragraph,
  backpacker_origin: "Paris",
  crush: Faker::Lorem.paragraph,
  backpacker_email: "thomas@gmail.com",
  adress: "Phnom Penh, Cambodia",
  teddy: teddy_bayon
)
phnompenh.save!
    phnompenh.save!
phnompenh.photos = [File.open(Rails.root.join('db/fixtures/images/stage_phnompenh_1.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_phnompenh_2.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_phnompenh_3.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_phnompenh_4.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_phnompenh_5.jpg'))]
    phnompenh.save!

hcm = Stage.new(
  date: "Wed, 1 Mar 2017",
  content: Faker::Lorem.paragraph,
  backpacker_name: "Boris",
  backpacker_description: Faker::Lorem.paragraph,
  backpacker_origin: "Marseilles",
  crush: "Poste Eiffel",
  backpacker_email: "boris@gmail.com",
  adress: "Ho Chi Minh, Vietnam",
  teddy: teddy_bayon
)
hcm.save!
    hcm.save!
hcm.photos = [File.open(Rails.root.join('db/fixtures/images/stage_hcm_1.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_hcm_2.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_hcm_3.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_hcm_4.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_hcm_5.jpg'))]
    hcm.save!

hoian = Stage.new(
  date: "Wed, 8 Mar 2017",
  content: Faker::Lorem.paragraph,
  backpacker_name: "Boris",
  backpacker_description: Faker::Lorem.paragraph,
  backpacker_origin: "Marseilles",
  crush: Faker::Lorem.paragraph,
  backpacker_email: "boris@gmail.com",
  adress: "Hoi An, Vietnam",
  teddy: teddy_bayon
)
hoian.save!
    hoian.save!
hoian.photos = [File.open(Rails.root.join('db/fixtures/images/stage_hoian_1.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_hoian_2.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_hoian_3.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_hoian_4.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_hoian_5.jpg'))]
    hoian.save!

catba = Stage.new(
  date: "Wed, 15 Mar 2017",
  content: Faker::Lorem.paragraph,
  backpacker_name: "Martin",
  backpacker_description: Faker::Lorem.paragraph,
  backpacker_origin: "South Africa",
  crush: Faker::Lorem.paragraph,
  backpacker_email: "martin@gmail.com",
  adress: "Catba, Vietnam",
  teddy: teddy_bayon
)
catba.save!
    catba.save!
catba.photos = [File.open(Rails.root.join('db/fixtures/images/stage_catba_1.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_catba_2.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_catba_3.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_catba_4.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_catba_5.jpg'))]
    catba.save!
sapa = Stage.new(
  date: "Wed, 22 Mar 2017",
  content: Faker::Lorem.paragraph,
  backpacker_name: "Martin",
  backpacker_description: Faker::Lorem.paragraph,
  backpacker_origin: "South Africa",
  crush: "Hmongs are very friendly !",
  backpacker_email: "martin@gmail.com",
  adress: "Sapa, Vietnam",
  teddy: teddy_bayon
)
sapa.save!
    sapa.save!
sapa.photos = [File.open(Rails.root.join('db/fixtures/images/stage_sapa_1.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_sapa_2.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_sapa_3.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_sapa_4.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_sapa_5.jpg'))]
    sapa.save!

puts "Creating Cousteau's Stages"

marquises = Stage.new(
  date: "Mer, 6 Jan 2016",
  content: Faker::Lorem.paragraph,
  backpacker_name: "Jordan",
  backpacker_description: Faker::Lorem.paragraph,
  backpacker_origin: "Bretagne, France",
  crush: Faker::Lorem.paragraph,
  backpacker_email: "jordan@gmail.com",
  adress: "Marquises, Polynésie Française",
  teddy: teddy_cousteau
)
marquises.save!
marquises.photos = [File.open(Rails.root.join('db/fixtures/images/stage_marquises_1.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_marquises_2.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_marquises_3.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_marquises_4.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_marquises_5.jpg'))]
    marquises.save!
tahiti = Stage.new(
  date: "Mer, 17 Jan 2016",
  content: Faker::Lorem.paragraph,
  backpacker_name: "Jordan",
  backpacker_description: Faker::Lorem.paragraph,
  backpacker_origin: "Bretagne, France",
  crush: Faker::Lorem.paragraph,
  backpacker_email: "jordan@gmail.com",
  adress: "Papeete, Polynésie Française",
  teddy: teddy_cousteau
)
tahiti.save!
tahiti.photos = [File.open(Rails.root.join('db/fixtures/images/stage_tahiti_1.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_tahiti_2.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_tahiti_3.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_tahiti_4.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_tahiti_5.jpg'))]
    tahiti.save!
ushuaia = Stage.new(
  date: "Wed, 23 Mar 2016",
  content: Faker::Lorem.paragraph,
  backpacker_name: "Jordan",
  backpacker_description: Faker::Lorem.paragraph,
  backpacker_origin: "Bretagne, France",
  crush: Faker::Lorem.paragraph,
  backpacker_email: "jordan@gmail.com",
  adress: "Ushuaia, Argentina",
  teddy: teddy_cousteau
)
ushuaia.save!
    ushuaia.save!
ushuaia.photos = [File.open(Rails.root.join('db/fixtures/images/stage_ushuaia_1.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_ushuaia_2.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_ushuaia_3.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_ushuaia_4.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_ushuaia_5.jpg'))]
    ushuaia.save!
alexander = Stage.new(
  date: "Wed, 8 Jun 2016",
  content: Faker::Lorem.paragraph,
  backpacker_name: "Jordan",
  backpacker_description: Faker::Lorem.paragraph,
  backpacker_origin: "Bretagne, France",
  crush: Faker::Lorem.paragraph,
  backpacker_email: "jordan@gmail.com",
  adress: "alexander island",
  teddy: teddy_cousteau
)
alexander.save!
alexander.photos = [File.open(Rails.root.join('db/fixtures/images/stage_alexander_1.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_alexander_2.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_alexander_3.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_alexander_4.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_alexander_5.jpg'))]
    alexander.save!
pde = Stage.new(
  date: "Wed, 16 Nov 2016",
  content: Faker::Lorem.paragraph,
  backpacker_name: "Jordan",
  backpacker_description: Faker::Lorem.paragraph,
  backpacker_origin: "Bretagne, France",
  crush: Faker::Lorem.paragraph,
  backpacker_email: "jordan@gmail.com",
  adress: "Punta Del Este, Urugay",
  teddy: teddy_cousteau
)
pde.save!
    pde.save!
pde.photos = [File.open(Rails.root.join('db/fixtures/images/stage_pde_1.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_pde_2.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_pde_3.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_pde_4.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_pde_5.jpg'))]
    pde.save!
antigua = Stage.new(
  date: "Wed, 15 Feb 2017",
  content: Faker::Lorem.paragraph,
  backpacker_name: "Jordan",
  backpacker_description: Faker::Lorem.paragraph,
  backpacker_origin: "Bretagne, France",
  crush: Faker::Lorem.paragraph,
  backpacker_email: "jordan@gmail.com",
  adress: "Antigua",
  teddy: teddy_cousteau
)
antigua.save!
    antigua.save!
antigua.photos = [File.open(Rails.root.join('db/fixtures/images/stage_antigua_1.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_antigua_2.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_antigua_3.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_antigua_4.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_antigua_5.jpg'))]
    antigua.save!

puts "Creating Potam's Stages"

paris = Stage.new(
  date: "Wed, 15 Feb 2017",
  content: Faker::Lorem.paragraph,
  backpacker_name: "Helo",
  backpacker_description: Faker::Lorem.paragraph,
  backpacker_origin: "Ville d'Avray, France",
  crush: Faker::Lorem.paragraph,
  backpacker_email: "helo@gmail.com",
  adress: "Paris, France",
  teddy: teddy_potam
)
paris.save!
    paris.save!
paris.photos = [File.open(Rails.root.join('db/fixtures/images/stage_paris_1.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_paris_2.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_paris_3.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_paris_4.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_paris_5.jpg'))]
    paris.save!


barcelone = Stage.new(
  date: "Wed, 15 Feb 2017",
  content: Faker::Lorem.paragraph,
  backpacker_name: "Robert Wong",
  backpacker_description: Faker::Lorem.paragraph,
  backpacker_origin: "Melun, France",
  crush: Faker::Lorem.paragraph,
  backpacker_email: "robert@gmail.com",
  adress: "barcelona, Spain",
  teddy: teddy_potam
)
barcelone.save!
    barcelone.save!
barcelone.photos = [File.open(Rails.root.join('db/fixtures/images/stage_barcelone_1.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_barcelone_2.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_barcelone_3.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_barcelone_4.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_barcelone_5.jpg'))]
    barcelone.save!

marrakech = Stage.new(
  date: "Wed, 15 Feb 2017",
  content: Faker::Lorem.paragraph,
  backpacker_name: "Robert Wong",
  backpacker_description: Faker::Lorem.paragraph,
  backpacker_origin: "Melun, France",
  crush: Faker::Lorem.paragraph,
  backpacker_email: "robert@gmail.com",
  adress: "marrakech, Marocco",
  teddy: teddy_potam
)
marrakech.save!
    marrakech.save!
marrakech.photos = [File.open(Rails.root.join('db/fixtures/images/stage_marrakech_1.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_marrakech_2.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_marrakech_3.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_marrakech_4.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_marrakech_5.jpg'))]
    marrakech.save!

puts "Creating Ross's Stages"

dubai = Stage.new(
  date: "Wed, 15 Feb 2017",
  content: "We stayed in Dubai few days, it's an impressive city and we prefere much to be in the nature. Anyway, it was interesting to see that but we're really happy to fly to Mauritius tomorrow with Ross",
  backpacker_name: "Christian",
  backpacker_description: "We are retired with my wife and we travelled a lot. Our son is going to have a baby so we decide to send a teddy travelling around the word for him!",
  backpacker_origin: "Berlin, France",
  crush: "We did a tour in the desert on camels, that was really fun even though it was very hot there",
  backpacker_email: "christian@gmail.com",
  adress: "Dubai",
  teddy: teddy_ross
)
dubai.save!
    dubai.save!
dubai.backpacker_photo = [File.open(Rails.root.join('db/fixtures/images/backpacker_christian.jpg'))]
    dubai.save!
dubai.photos = [File.open(Rails.root.join('db/fixtures/images/stage_dubai_1.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_dubai_2.jpg'))]
    dubai.save!

mauritius = Stage.new(
  date: "Wed, 22 Feb 2017",
  content: "It was a shock when we arrive in Mauritius from Dubai, the difference was hudge! The nature is amazing, we walked trough the forest and have had nice swim in the bay and saw amzing fishes. We meet Robert there, such a nice guy and what an adventurer!",
  backpacker_name: "Christian",
  backpacker_description: "We are retired with my wife and we travelled a lot. Our son is going to have a baby so we decide to send a teddy travelling around the word for him!",
  backpacker_origin: "Berlin, France",
  crush: "We stayed in a very nice bNb named 'Borilla', Lora, the owner is cooked fish on grill, that was absolutly delicious!",
  backpacker_email: "christian@gmail.com",
  adress: "Mauritius",
  teddy: teddy_ross
)
mauritius.save!
    mauritius.save!
mauritius.backpacker_photo = [File.open(Rails.root.join('db/fixtures/images/backpacker_christian.jpg'))]
    mauritius.save!
mauritius.photos = [File.open(Rails.root.join('db/fixtures/images/stage_mauritius_1.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_mauritius_2.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_mauritius_3.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_mauritius_4.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_mauritius_5.jpg'))]
    mauritius.save!

iceland = Stage.new(
  date: "Wed, 15 Mar 2017",
  content: "Icy journey…. On our first full day in Iceland, we decided to venture further east, but not before having a delicious, fresh breakfast spread prepared for us by our friendly host. Local cheeses, vegetables, fresh-baked bread, smoked trout, and eggs gave us the energy to head out on the road bright and early. Our first destination was Skaftafell National Park with our first sighting of Vatnajökull glacier. We met up with our tour guide and got crampons and an ice ax. We were given some instruction on how to hike on the glacier and awkwardly stomped our way over to it. It was a gorgeous, sunny day, and the ice gleamed all around us. She took us around different crevices so that we could see blue ice and ice caves.  We spent around two hours on the ice and had an amazing time.  Hiking a glacier sounded awfully cold to us so we bundled up in multiply layers. By the end, we were melting under the sun with the ice. Since we have been searching for northern lights every night since we got here, we have not slept much.",
  backpacker_name: "Robert Wong",
  backpacker_description: "Hi everyone ! My name is Robert, I come from a little city in France and I love travelling ! What I love the most is to meet people, talk with them and share stories...Last year I climb Himalaya it was a big adventure. Since January I started a new challenge : to visit every islands on earth ! I will start with Corsica, Iceland and Papuasia. Follow me",
  backpacker_origin: "Melun, France",
  crush: "I was really impressed by the Geysers. Every 5 or 10 minutes the grounds is shaking, smoke comes from nowhere, it’s fantastic !!",
  backpacker_email: "robert@gmail.com",
  adress: "Sveitarfélagið Skagafjörður",
  teddy: teddy_ross
)
iceland.save!
    iceland.save!
iceland.backpacker_photo = [File.open(Rails.root.join('db/fixtures/images/backpacker_robert.jpg'))]
    iceland.save!
iceland.photos = [File.open(Rails.root.join('db/fixtures/images/stage_iceland_1.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_iceland_2.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_iceland_3.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_iceland_4.jpg')),File.open(Rails.root.join('db/fixtures/images/stage_iceland_5.jpg'))]
    iceland.save!

puts "Finished!"


