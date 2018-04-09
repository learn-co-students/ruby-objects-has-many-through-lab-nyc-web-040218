class Patient

  attr_accessor :appointments, :name
  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def doctors
    appointments.map {|appointment| appointment.doctor}
  end


end
