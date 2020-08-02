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

def self.find_by_name(name)
  self.all.detect{|song|song.name===name}

end

def self.find_or_create_by_name(name)
  if self.find_by_name(name)
      self.find_by_name(name)
  else
    self.create(name)
  end

end

def self.new_from_filename(filename)
  song = self.create(filename.split(' - ')[1])
  artist = Artist.create(filename.split(' - ')[0])
  genre = Genre.create(filename.split(' - ')[2].slice!('.mp3'))
  song.artist =artist
  song.genre= genre
  return song

end

end
