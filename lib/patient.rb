require "pry"
class Patient
    attr_accessor :name
    @@all=[]
    def initialize(name)

        @name=name
        Patient.all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, doctor)
        Appointment.new(self, date, doctor)
    end

    def appointments
        Appointment.all.select do |song|
            song.patient == self
        end
    end
    def doctors
        
        appointments.map do |song|
          
           song.doctor
        end
    end
    def new_appointment(doctor, date)   #date, patient, doctor
        Appointment.new(date, self, doctor)
       
    end
end
