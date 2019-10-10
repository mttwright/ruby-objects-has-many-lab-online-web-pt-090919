require "pry"

class Artist
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def songs
    Songs.all.collect do |song|
      song.name if song.artist == self.name
    end
  end
  
    
  
  
end