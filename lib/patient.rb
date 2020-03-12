class Patient

    @@all = []

    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end
    def appointments
        Appointment.all.select {|appt| appt.patient == self}
    end
        
    def doctors
        doctors = self.appointments.reduce([].to_set) do |memo, appt|
            if !memo.include?(appt.doctor)
                memo.add(appt.doctor)
            end
            memo
        end
        return doctors.to_a
    end

    def self.all 
        return @@all 
    end
end