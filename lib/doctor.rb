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
    Appointment.new(patient, date, self)
  end

  def appointments
    all_appointments = []
    Appointment.all.each do |appointment|
      if appointment.doctor == self
        all_appointments << appointment
      end
    end
    all_appointments
  end

  def patients
    all_patients = []
    # binding.pry
    self.appointments.each {|appointment| all_patients << appointment.patient}
    all_patients
  end


end
