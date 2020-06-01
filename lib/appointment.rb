class Appointment
  attr_accessor :name, :patient, :doctor
  @@all = []
  
  def initialize(date, patient, doctor)
    @name = name
    @appointment = appointment
    @doctor = doctor
    @@all << self
  end
  
  def self.all
    @@all
  end
end