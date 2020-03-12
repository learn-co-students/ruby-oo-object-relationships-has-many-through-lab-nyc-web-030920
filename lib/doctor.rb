class Doctor

    @@all = []

    attr_reader :name 

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end
    def appointments
        Appointment.all.select {|appt| appt.doctor == self}
    end
    def patients
        patients = self.appointments.reduce([].to_set) do |memo, appt|
            if !memo.include?(appt.patient)
                memo.add(appt.patient)
            end
            memo
        end
        return patients.to_a
    end

    def self.all 
        return @@all
    end
end