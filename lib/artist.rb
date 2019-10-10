require "pry"

class Artist
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def songs
   @songs = Song.all.collect do |song|
      song if song.artist.name == self.name
    end
  end
  
  def add_song(song)
    song.artist = self.name
    self.songs
  end
    
  
  
end