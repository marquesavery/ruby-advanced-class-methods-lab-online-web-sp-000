require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.create
    song = self.new
    @@all << song
    song
  end

  def self.all
    @@all
  end

  def self.new_by_name(name)
    song = self.new
    # binding.pry
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = Song.new
    song.name = name
    @@all << song
    song
  end

  def self.find_by_name(name)
    if @@all.include?(name)
      @@all.each do |value|
      # binding.pry
        if value.name == name
          return value
        end
      end
    else
      return false
    end
  end


  def save
    self.class.all << self
  end

end
