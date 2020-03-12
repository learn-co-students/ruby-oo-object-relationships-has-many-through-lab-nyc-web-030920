class Doctor
    attr_accessor :name, :appointment, :patient
    @@all = []
    
    def initialize(name)
        @name = name
        @appointment = appointment
        @@all << self
    end
    
    def self.all
    @@all
    end

    def new_appointment(patient, date)
        Appointment.new(self, patient, date)
    end

    def appointments
        Appointment.all.select do |appt|
            appt.doctor == self
    end
end

    def patients
        appointments.select do |appt|
        appt.patient
        end
    end

end
