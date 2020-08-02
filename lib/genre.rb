class Genre

attr_accessor :name

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
  song = Genre.new(name)
  song
end

def songs
 @songs= Song.all.select{|song| song.genre==self}
  puts @songs
end



end
