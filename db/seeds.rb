# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

Follower.destroy_all
Stage.destroy_all
Teddy.destroy_all
User.destroy_all

(1..10).to_a.each do |i|

  name = Faker::Pokemon.name
  mail = name.parameterize + i.to_s + "@gmail.com"
  us = User.new(
    name: name,
    email: mail,
    password: "123456"
  )
  us.save!

  ted = Teddy.new(
    name: Faker::LordOfTheRings.character + i.to_s,
    description: Faker::Lorem.paragraph,
    user: us,
    gender: "male",
    origin: "Paris",
    personnality: "cudly"
  )
  ted.save!
  10.times do
    st = Stage.new(
      date: Faker::Date.between(30.days.ago, Date.today),
      content: Faker::Lorem.paragraph,
      backpacker_name: Faker::Superhero.name,
      backpacker_description: Faker::Superhero.power,
      adress: Faker::Address.country,
      teddy: ted
    )
    st.save!
  end
end

