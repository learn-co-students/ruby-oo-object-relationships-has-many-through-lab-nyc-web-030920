class Doctor
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def appointments
 #     returns all appointments associated with this Doctor (FAILED - 3)
        
    end
    def new_appointment
 #     given a date and a patient, creates a new appointment (FAILED - 4)
        
    end
    def patients
 #     has many patients, through appointments

    end
end