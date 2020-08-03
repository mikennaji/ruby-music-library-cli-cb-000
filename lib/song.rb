class Song

attr_accessor :name, :artist, :genre

extend Concerns::Findable


@@all = []

def initialize(name,artist_object=nil,genre_object=nil)
  @name = name
  self.artist = artist_object
  self.genre = genre_object
  save

end

def save
    @@all << self
end

def self.all
  @@all
end

def self.destroy_all
  @@all =[]
end

def self.create(name)
  song = Song.new(name)
  song
end




def self.new_from_filename(filename)
  var = filename.split(" - ")
   n = var[1]
   a = Artist.find_or_create_by_name(var[0])
   g =  Genre.find_or_create_by_name(var[2].gsub(".mp3",""))
   Song.new(n, a, g)
 end

def self.create_from_filename(filename)
  self.new_from_filename(filename)

end


end
