class MusicLibraryController



def initialize(path='./db/mp3s')
  @path= path
  new_music = MusicImporter.new(@path)
  new_music.import
end












end
