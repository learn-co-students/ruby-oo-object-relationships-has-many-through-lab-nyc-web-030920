require "pry"
class Doctor
    attr_accessor :name
    @@all=[]
    def initialize(name)

        @name=name
        Doctor.all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, patient)
        Appointment.new(patient, date, self)
    end

    def appointments
        Appointment.all.select do |song|
            song.doctor == self
        end
    end
    def patients
        
        appointments.map do |song|
           
           song.patient
        end
    end
end
