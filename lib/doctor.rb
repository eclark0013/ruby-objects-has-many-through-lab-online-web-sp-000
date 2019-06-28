class Doctor

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

  def new_appointment(patient, date)
    Appointment.new(date, self, patient)
  end

  def appointments
    Appointment.all.each.select {|appointment| appointment.doctor == self}
  end

  def patients
    self.appointments.collect {|appointment| appointment.patient}
  end


end
