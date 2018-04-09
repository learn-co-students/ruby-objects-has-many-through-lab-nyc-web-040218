class Doctor

attr_accessor :name


  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment_instance)
    @appointments<<appointment_instance
    appointment_instance.doctor = self
  end

  def appointments
    @appointments
  end

  def patients
    self.appointments.map {|appointment_instance| appointment_instance.patient}
  end

end 
