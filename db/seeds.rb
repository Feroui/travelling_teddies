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
  description: "Bozo is crative project from an great artist called Bob. Bozo has been sent travelling to communicate happiness and love. He's creating link between people all over the world. If one day you meet Bozo somewhere, it will be your lucky day",
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

puts "Finished!"



(1..10).to_a.each do |i|

  name = Faker::Pokemon.name
  mail = name.parameterize + i.to_s + "@gmail.com"
  us = User.new(
    name: name,
    email: mail,
    password: "123456"
  )
  us.photos = [File.open(Rails.root.join('db/fixtures/images/user_bob.jpg'))]
  us.save!

  ted = Teddy.new(
    name: Faker::LordOfTheRings.character + i.to_s,
    description: Faker::Lorem.paragraph,
    user: us,
    gender: "male",
    origin: "Paris",
    personality: "cudly"

  )
  ted.save!
  10.times do
    st = Stage.new(
      date: Faker::Date.between(30.days.ago, Date.today),
      content: Faker::Lorem.paragraph,
      backpacker_name: Faker::Superhero.name,
      backpacker_description: Faker::Superhero.power,
      backpacker_origin: Faker::Address.country,
      crush: Faker::Lorem.paragraph,
      backpacker_email: coucou@coucou.com
      adress: Faker::Address.country,
      teddy: ted
    )
    st.save!
  end
end

