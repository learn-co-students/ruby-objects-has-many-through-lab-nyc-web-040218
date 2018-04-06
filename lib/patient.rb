class Patient

  attr_accessor :doctors
  attr_reader :appointments

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
  end

  def add_appointment(appointment)
    appointment.patient = self 
    doctors << appointment.doctor
    appointments << appointment
  end

end
