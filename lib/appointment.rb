class Appointment
  attr_accessor :name, :patient, :doctor
  @@all = []
  
  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist
    @@all << self
  end
  
  def self.all
    @@all
  end
end