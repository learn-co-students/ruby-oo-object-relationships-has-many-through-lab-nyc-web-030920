class Appointment
    attr_accessor :date, :patient, :doctor

    @@all = []

    def initialize(date, patient, doctor)
        #date was in the wrong arguement position for test 'patient belongs to patient'
        @date = date
        @patient = patient
        @doctor = doctor
        @@all << self
    end

    def self.all
        @@all
    end
    

end