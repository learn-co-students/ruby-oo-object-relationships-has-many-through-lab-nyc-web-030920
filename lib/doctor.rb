class Doctor
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        Doctor.all << self
    end

    def self.all
        @@all
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end
    def appointments
        Appointment.all.select do |apoint|
            apoint.doctor == self
        end
    end

    def patients
        appointments.map do |appoint|
            appoint.patient
        end
    end
end