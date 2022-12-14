# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"

Add.delete_all

(1..30).each do |add|
  add_title = Faker::Lorem.sentence(word_count: 13)
  add_description = Faker::Lorem.paragraph(sentence_count: 14)
  add_date = Faker::Time.between(from: 30.days.ago, to: Date.today)
  seed_add = {
    "id" => add,
    "title" => add_title,
    "description" => add_description,
    "created_at" => add_date
  }
  Add.create(seed_add)
end
