class MusicLibraryController
attr_accessor :path




def initialize(path='./db/mp3s')
   @path = path
   MusicImporter.new(@path).import

 end

def call
  response = gets.strip

  puts "Welcome to your music library!"
  puts "To list all of your songs, enter 'list songs'."
  puts "To list all of the artists in your library, enter 'list artists'."
  puts "To list all of the genres in your library, enter 'list genres'."
  puts "To list all of the songs by a particular artist, enter 'list artist'."
  puts "To list all of the songs of a particular genre, enter 'list genre'."
  puts "To play a song, enter 'play song'."
  puts "To quit, type 'exit'."
  puts "What would you like to do?"
  while response != "exit"
    response = gets.strip
    puts "Welcome to your music library!"
    puts "To list all of your songs, enter 'list songs'."
    puts "To list all of the artists in your library, enter 'list artists'."
    puts "To list all of the genres in your library, enter 'list genres'."
    puts "To list all of the songs by a particular artist, enter 'list artist'."
    puts "To list all of the songs of a particular genre, enter 'list genre'."
    puts "To play a song, enter 'play song'."
    puts "To quit, type 'exit'."
    puts "What would you like to do?"
 end




end


def list_artists

   Song.all.each_with_index do |value, index|
     puts "#{index+1}. #{value.artist.name} - #{value.name} - #{value.genre.name}"
   end
 end




def list_artists

   Song.all.sort{|a,b|a.name<=> b.name}.each_with_index do |value, index|
     puts "#{index+1}. #{value.artist.name}"
   end
 end


   def list_genres

      Song.all.sort{|a,b|a.name<=> b.name}.each_with_index do |value, index|
        puts "#{index+1}. #{value.genre.name}"
      end

    end

  def list_songs_by_artist
    puts "Please enter the name of an artist:"
    response = gets.strip
    Song.all.select{|song|song.artist.name === response}.sort{|a,b|a.name<=> b.name}.each_with_index do |value, index|
      puts "#{index+1}. #{value.name} - #{value.genre.name}"
    end
  end

  def list_songs_by_genre
    puts "Please enter the name of a genre:"
    response = gets.strip
    Song.all.select{|song|song.genre.name === response}.sort{|a,b|a.name<=> b.name}.each_with_index do |value, index|
      puts "#{index+1}. #{value.artist.name} - #{value.name}"
    end
  end













end
