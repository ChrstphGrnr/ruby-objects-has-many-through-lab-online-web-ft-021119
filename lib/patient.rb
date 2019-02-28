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

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    all_appointments = []
    Appointments.all.each do |appointment|
      if appointment.patient == self
        all_appointments << appointment
      end
    end
    all_appointments
  end

end
