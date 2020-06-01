class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all { |song| song.genre == self }
  end

  def doctors
    appointments.map(&:doctor)
  end

  def new_appointment(date, doctor)
    songs << song
  end
end