require "pry"

class Song
  @@all = []
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @@all.push(self)
  end
  
  def artist=(artist)
    @artist = artist
    artist.
    
  
  def self.all
    @@all
  end
  
  
  
  
end