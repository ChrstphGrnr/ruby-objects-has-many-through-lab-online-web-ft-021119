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
    Appointment.all.each do |appointment|
      if appointment.patient == self
        all_appointments << appointment
      end
    end
    all_appointments
  end

  def doctors
    all_appointments = []
    self.appointments.each {|appointment| all_appointments << appointment.doctor}
    all_appointments
  end

end
