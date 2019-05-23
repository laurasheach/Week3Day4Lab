require('pry')
require_relative('models/movie')
require_relative('models/star')
require_relative('models/casting')

Casting.delete_all()
Star.delete_all()
Movie.delete_all()

movie1 = Movie.new({
  'title' => 'Trainspotting',
  'genre' => 'Drama',
  'budget' => 1000000
  })
movie1.save()

movie2 = Movie.new({
  'title' => 'Toy Story',
  'genre' => 'Cartoon',
  'budget' => 15000000
  })
movie2.save()

movie3 = Movie.new({
  'title' => 'Philadelphia',
  'genre' => 'Drama',
  'budget' => 4500000
  })
movie3.save()

movie4 = Movie.new({
  'title' => 'The Favourite',
  'genre' => 'Drama',
  'budget' => 7500000
  })
movie4.save()

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

star3 = Star.new({
  'first_name' => 'Olivia',
  'last_name'=> 'Colman'
  })
star3.save

star4 = Star.new({
  'first_name' => 'Tim',
  'last_name' => 'Allen'
  })
star4.save

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

casting4 = Casting.new({
  'movie_id' => movie4.id,
  'star_id' => star3.id,
  'fee' => 50000
  })
casting4.save()

casting5 = Casting.new({
  'movie_id' => movie2.id,
  'star_id' => star4.id,
  'fee' => 400000
  })
casting5.save()

# movie1.title = 'The Prime of Miss Jean Brodie'
# movie1.update()
#
# star1.first_name = 'Dame Maggie'
# star1.last_name = 'Smith'
# star1.update()
#
# casting1.fee = 5000
# casting1.update()
#
# movie4.delete()
# star3.delete()
# casting4.delete()

all_movies = Movie.all()
all_stars = Star.all()
all_castings = Casting.all()

binding.pry
nil
