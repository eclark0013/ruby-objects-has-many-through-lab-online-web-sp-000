class Appointment

  attr_accessor :date, :doctor, :patient

  @@all = []

  def initialize(date, doctor, patient)
    @date = date
    @doctor = doctor
    @patient = patient
    @@all<<self
    @doctor.appointments<<self
    @patient.appointments<<self
  end

  def self.all
    @@all
  end


end
