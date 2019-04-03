require('pry-byebug')
require_relative('models/album.rb')
require_relative('models/artist.rb')

Album.delete_all()
Artist.delete_all()

artist1 = Artist.new({
  'name' => "Coldplay",
    })

artist1.save()

album1 = Album.new({
  'title' => 'Parachutes',
  'genre' => 'Pop Rock',
  'artist_id' => "#{artist1.id}"
  })

album1.save()


album1.title = 'new album'
album1.update()

artist1.name = 'Travis'
artist1.update()


binding.pry

nil
