require "pry"

class Artist
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @songs = Song
  end
  
  def songs
    @songs
  end
  
  def add_song(song)
    @songs.push(song)
  end
    
  
  
end