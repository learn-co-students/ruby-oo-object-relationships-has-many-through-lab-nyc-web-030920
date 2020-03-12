class Doctor
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        Doctor.all << self
    end

    def new_appointment (date, patient)
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select do |appointment_list|
            appointment_list.doctor == self
        end
    end

    def patients
        appointments.map do |names|
            names.patient
        end
    end


    def self.all
        @@all
    end
end