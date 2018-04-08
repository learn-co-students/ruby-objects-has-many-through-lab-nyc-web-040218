class Doctor
  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment_instance)
    appointment_instance.doctor = self
    @appointments << appointment_instance
  end

  def patients
    @appointments.map do |appointment_instance|
      appointment_instance.patient
    end
  end

end
