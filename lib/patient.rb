# class Patient
#
#   attr_accessor
#
#   def initialize(name)
#     @name = name
#     @appointments = []
#   end
#
#   def add_appointment(appointment)
#     @appointment << appointment
#     appointment.patient = self
#   end
#
#   def appointments
#     @appointments
#   end
#
#   def doctors
#     self.appointments.map do |appointment_instance|
#     appointment_instance.doctor
#     end
#   end
# end



class Patient
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = sel
  end

  def appointments
    @appointments
  end

  def doctors
    self.appointments.collect do |appointment|
      appointment.doctor
    end
  end
end
