class Doctor
    attr_accessor :name, :appointments, :patients

    def initialize(name)
        @name = name
        @appointments = []
    end

    def add_appointment(appointment) #takes in Appointment instance
        appointments.push(appointment) #push appointment instance to the appointmentSSS list
    end

    def patients
        appointments.map do |appointment|
            appointment.patient #collect the patient that belongs to ea. appointment
        end
    end
end