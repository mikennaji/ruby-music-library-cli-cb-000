class MusicImporter

 attr_accessor :path


def initialize(path)
 @path = path
end

def files
  directory = Dir["#{self.path}/*"]
  directory.map do |file|
    file.splice!(self.path + "/")
  end

  

end

end
