class Patient
@@all =[]
attr_accessor :name
def initialize(name)
    @name = name
    Patient.all << self
end

def new(name)
    Patient.new(name)
end

def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
end

def appointments
    Appointment.all.select {|appointments| appointments.patient == self}
end

def doctors
    appointments.map {|appointments| appointments.doctor}
end

def self.all
    @@all
end



end