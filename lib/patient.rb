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

    def new_appointment(doctor, date)
        app = Appointment.new(date, self, doctor)
    end

    def appointments 
        Appointment.all.select do |app_instance|
            app_instance.patient == self 
        end
    end

    def doctors 
        appointments.map do |app_instance|
            app_instance.doctor
        end
    end

end
