class MusicLibraryController



def initialize(file_path='./db/mp3s')
  @path= file_path
  new_music = MusicImporter.new(@path)
  new_music.import
end












end
