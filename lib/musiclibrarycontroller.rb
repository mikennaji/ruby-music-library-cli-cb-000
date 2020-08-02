class MusicLibraryController

attr_accessor :new_music, :path



def initialize(file_path="./db/mp3s")
  @path= file_path
  @new_music = MusicImporter.new(@path)
  @new_music = @new_music.import
end

def call
  puts "Welcome to your music library!"
  puts "To list all of your songs, enter 'list songs'."
  puts "To list all of the artists in your library, enter 'list artists'."
  puts "To list all of the genres in your library, enter 'list genres'."
  puts "To list all of the songs by a particular artist, enter 'list artist'."
  puts "To list all of the songs of a particular genre, enter 'list genre'."
  puts "To play a song, enter 'play song'."
  puts "To quit, type 'exit'."
  puts "What would you like to do?"
  response = gets.strip
  case response
   when 'list songs'
     self.files.each do |files|
       puts files
    end
  else
    nil
  end




end



def list_artists
  puts self.new_music








end











end
