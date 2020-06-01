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
    Appointment.all { |appointment| appointment.patient == self }
  end

  def doctors
    appointments.map(&:doctor)
  end

  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end
end