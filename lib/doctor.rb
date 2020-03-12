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

    def appointments
        Appointment.all.select do |app_instance|
            app_instance.doctor == self 
        end
    end

    def new_appointment(date, patient)
        Appointment.new(patient, date, self)
    
    end

    def patients
        appointments.map do |app_instance|
            app_instance.patient
        end
    end
end
