class Genre

attr_accessor :name

def initialize(name)
  @name = name
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
  song = Genre.new(name)
  song
end


end