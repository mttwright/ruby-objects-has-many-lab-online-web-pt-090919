require "pry"

class Artist
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def songs
    Songs.all.collection_select
  end
  
  def add_song(song)
    @songs.push(song)
  end
    
  
  
end