class Doctor
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(name, patient)
    Song.new(name, self, patient)
  end
  
  def appointments
    Appointment.all.select do |song|
      song.artist == self
    end
  end
  
  def genres
    Song.all.map do |song|
      song.genre
    end
  end
end