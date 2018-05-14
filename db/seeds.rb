# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


100.times { Sermon.create(title: Faker::Book.title, body: Faker::Lorem.sentence(100, true, 20), scriptures: Faker::Lorem.sentence(10, true, 10))}  

Sermon.all.each do |sermon|
        10.times do
            sermon.comments.create(body: Faker::BackToTheFuture.quote, user_id: 1 ) 
        end
    end