
require('pry')
require_relative('./models/album')
require_relative('./models/artist')


artist1 = Artist.new({ 'name' => 'Elvis' })
artist1.save

artist2 = Artist.new({ 'name' => 'Cher' })
artist2.save

album1 = Album.new({ 'title' => 'The Essential Elvis Presley', 'genre' => 'Rock and Roll', 'artist_id' => artist1.id })
album1.save

album2 = Album.new({ 'title' => 'Believe', 'genre' => 'Pop', 'artist_id' => artist2.id })
album2.save



# binding.pry
# nil
