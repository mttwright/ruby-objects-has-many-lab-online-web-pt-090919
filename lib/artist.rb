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
    song.artist = self
    @songs.push(song)
  end
  
  def add_song_by_name(name)
    x = Song.new(name)
    add_song(x)
  end
  
  def self.song_count
    Song.all.length
  end
  
  
end