class Artist

attr_accessor :name

extend Concerns::Findable


def initialize(name)
  @name = name
  save
  @songs = []

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
  song = Artist.new(name)
  song
end

def songs
  @songs= Song.all.select{|song|song.artist==self}
  @songs
end

def add_song(song)
  if song.artist.nil?
   song.artist =self
   self.songs<< self
 else
   nil
 end
end

def artist=


end
