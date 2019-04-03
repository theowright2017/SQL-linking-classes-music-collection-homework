require('pry-byebug')
require_relative('models/album.rb')
require_relative('models/artist.rb')

artist1 = Artist.new({
  'name' => "Bon Jovi",
    })

artist1.save()
binding.pry

nil
