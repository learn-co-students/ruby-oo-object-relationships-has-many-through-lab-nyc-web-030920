class Doctor
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select do |appointment_instance|
            appointment_instance.doctor == self
        end
    end

    def new_appointment(patient, date)
        new = Appointment.new(date, patient, self)
    end

    def patients
        appointments.map(&:patient)
    end
end