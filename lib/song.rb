class Song

attr_accessor :name, :artist, :genre 

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

end
