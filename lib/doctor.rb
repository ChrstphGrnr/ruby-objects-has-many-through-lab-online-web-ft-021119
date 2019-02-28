class Doctor
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def appointments
    all_appointments = []
    Appointments.all.each do |appointment|
      if appointment.doctor == self 
        all_appointments << appointment 
      end
    end
    all_appointments 
  end


end
