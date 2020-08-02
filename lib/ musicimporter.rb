class MusicImporter

 attr_accessor :path


def initialize(path)
 @path = path
end

def files
  directory = Dir["#{self.path}/*"]
  directory.map do |file|
    file.delete(self.path + "/")
  end
  puts directory



end

end
