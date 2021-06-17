# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


25.times do
    Post.create! title: Faker::Lorem.words(number: 5).join, content: Faker::Lorem.paragraphs(number: 5).join, user: User.all.sample
end

25.times do
    User.create! name: Faker::Name.name_with_middle, email: Faker::Internet.email
end
