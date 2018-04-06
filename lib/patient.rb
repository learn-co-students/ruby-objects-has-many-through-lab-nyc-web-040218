class Patient
    attr_accessor :name, :appointments

    def initialize(name)
        @name = name
        @appointments = []
    end

    def add_appointment(appointment) #takes in Appointment instance
        appointments.push(appointment)
        appointment.patient = self
    end

    def doctors
        appointments.map do |appointment|
            appointment.doctor
        end
    end
end