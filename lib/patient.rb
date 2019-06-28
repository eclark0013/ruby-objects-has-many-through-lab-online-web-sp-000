class Patient

  attr_accessor :name, :appointments

  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @@all<<self
  end

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    Appointment.new(date, doctor, self)
  end

  def appointments
    Appointment.all.each.select {|appointment| appointment.patient == self}
  end

  def doctors
    self.appointments.collect {|appointment| appointment.doctor}
  end


end
