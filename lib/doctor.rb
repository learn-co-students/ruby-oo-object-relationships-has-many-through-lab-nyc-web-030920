class Doctor
    attr_reader :patient 
    attr_accessor :name, :appointment
    @@all = []
    
    def initialize(name)
        @name = name
        @appointment = appointment
        @patient = patient
        @@all << self
    end
    
    def self.all
    @@all
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select do |appt|
            appt.doctor == self
    end
end

    def patients
        self.appointments.map do |appt|
        appt.patient
        end
    end

end
