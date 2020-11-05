# class Artist
#     @@all = []
#     attr_accessor :name, :songs, :genres
#     def initialize(name)
#         @name = name
#         # @songs = songs
#         # @genres = genres
#         @@all << self
#     end

#     def self.all
#         @@all
#     end

#     def songs
#         # @songs
#         Song.all.select { |song| 
#             song.artist == self}

#     end

#     def new_song(song)
#         Artist.new(song, self)
#     end
    
#     def genres
#         Genre.all.select do |genre|
#             genre.artist == self
#         end
#     end

# end

class Artist 

    attr_accessor :name
   @@all = []

    def initialize(name)
     @name = name
     @@all << self
   end

    def songs
     Song.all.select {|song| song.artist == self}
   end

    def genres
     songs.map {|song| song.genre}
   end

    def self.all
     @@all
   end

    def new_song(song, genre)
     Song.new(name, self, genre)
   end

 
  end 