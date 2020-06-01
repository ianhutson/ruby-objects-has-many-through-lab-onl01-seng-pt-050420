class Appointment
  attr_accessor :name, :patient, :doctor
  @@all = []
  
  def initialize(name, doctor, appointment)
    @name = name
    @genre = genre
    @artist = artist
    @@all << self
  end
  
  def self.all
    @@all
  end
end