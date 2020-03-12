class Patient

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
            appointment_instance.patient == self
        end
    end

    def new_appointment(doctor, date)
       new = Appointment.new(date, self, doctor)
    end

    def doctors
        appointments.map(&:doctor)
    end
end