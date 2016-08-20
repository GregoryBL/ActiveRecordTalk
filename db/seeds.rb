require 'faker'

10.times do
  Artist.create(name: (Faker::Name.name))
end

10.times do
  Album.create(title: Faker::StarWars.planet, tracks: 14, artist: Artist.all.sample)
end

20.times do
  Person.create(name: Faker::Name.name)
end

20.times do
  Review.create(reviewer: Person.all.sample, title: Faker::StarWars.quote, content: Faker::Hipster.paragraph, rating: (1..10).to_a.sample, album: Album.all.sample)
end

20.times do
  Comment.create(commenter: Person.all.sample, text: Faker::Hacker.say_something_smart, review: Review.all.sample)
end