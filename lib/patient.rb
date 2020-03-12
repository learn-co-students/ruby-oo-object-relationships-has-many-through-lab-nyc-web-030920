class Patient
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        Patient.all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select do |apoint|
            apoint.patient == self
        end
    end
end