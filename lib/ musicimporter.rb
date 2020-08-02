class MusicImporter

 attr_accessor :path


def initialize(path)
 @path = path
end

def files 
  directory = Dir["#{self.path}/*"]









end

end
