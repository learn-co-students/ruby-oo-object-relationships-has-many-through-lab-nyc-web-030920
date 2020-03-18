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

def new_appointment(date, doctor)
Appointment.new(doctor, self, date)
end

def appointments
    Appointment.all.select do |apt|
        apt.patient == self
    end
end

def doctors
    self.appointments.map do |apt|
        apt.doctor
    end
end


end
