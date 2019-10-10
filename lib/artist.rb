require "pry"

class Artist
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def songs
    Song.all.collect do |song|
      song if song.artist.name == self.name
    end
  end
  
    
  
  
end