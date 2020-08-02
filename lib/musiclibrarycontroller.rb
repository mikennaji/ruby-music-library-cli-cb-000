class MusicLibraryController < MusicImporter



def initialize(path="./db/mp3s")
  @path= path 
  new_music = MusicImporter.new(self.path)
  new_music.import
end


  









end