require "pry"

class Song
  @@all = []
  
  attr_accessor :artist, :name
  
  def initialize(name)
    @name = name
    @@all.push(self)
  end
  
  def self.all
    @@all
  end
  
  def artist_name
    self.artist.name
    binding.pry
  end
  
  
  
end