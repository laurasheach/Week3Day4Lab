require('pry')
require_relative('models/movie')
require_relative('models/star')
require_relative('models/casting')

movie1 = Movie.new({
  'title' => 'Trainspotting',
  'genre' => 'Drama'
  })
movie1.save()

movie2 = Movie.new({
  'title' => 'Toy Story',
  'genre' => 'Cartoon'
  })
movie2.save()

movie3 = Movie.new({
  'title' => 'Philadelphia',
  'genre' => 'Drama'
  })
movie3.save()

star1 = Star.new({
  'first_name' => 'Ewan',
  'last_name' => 'McGregor'
  })
star1.save

star2 = Star.new({
  'first_name' => 'Tom',
  'last_name' => 'Hanks'
  })
star2.save

casting1 = Casting.new({
  'movie_id' => movie1.id,
  'star_id' => star1.id,
  'fee' => 10000
  })
casting1.save()

casting2 = Casting.new({
  'movie_id' => movie2.id,
  'star_id' => star2.id,
  'fee' => 500000
  })
casting2.save()

casting3 = Casting.new({
  'movie_id' => movie3.id,
  'star_id' => star2.id,
  'fee' => 200000
  })
casting3.save()


binding.pry
nil
