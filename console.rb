
require('pry')
require_relative('./models/album')
require_relative('./models/artist')


Album.delete_all()
Artist.delete_all()

artist1 = Artist.new({ 'name' => 'Elvis' })
artist1.save

artist2 = Artist.new({ 'name' => 'Cher' })
artist2.save

album1 = Album.new({ 'title' => 'The Essential Elvis Presley', 'genre' => 'Rock and Roll', 'artist_id' => artist1.id })
album1.save

album2 = Album.new({ 'title' => 'Believe', 'genre' => 'Pop', 'artist_id' => artist2.id })
album2.save

album3 = Album.new({ 'title' => 'The Wonder of You', 'genre' => 'Rock and Roll', 'artist_id' => artist1.id })
album3.save

artist1.name = "Nina Simone"
artist1.update()

album1.title = "Unplugged"
album1.genre = "Blues"
album1.update()

Artist.find(artist1.id)
Album.find(album1.id)

album2.delete()
# Only works if all instances of artist's albums are removed first.
artist2.delete()

# binding.pry
# nil
