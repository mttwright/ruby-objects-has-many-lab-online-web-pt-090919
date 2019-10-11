require "pry"

class Song
  @@all = []
  
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
    @@all.push(self)
  end
  
  
  def self.all
    @@all
  end
  
  def artist_name
    self.artist.name
  end
  
  
  
  
end