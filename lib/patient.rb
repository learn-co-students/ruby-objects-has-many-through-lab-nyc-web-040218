class Patient
  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment_instance)
    appointment_instance.patient = self
    @appointments << appointment_instance
  end

  def doctors
    @appointments.map do |appointment_instance|
      appointment_instance.doctor
    end
  end
end
