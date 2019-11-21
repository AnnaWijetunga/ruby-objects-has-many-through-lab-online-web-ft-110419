# class Doctor

#   attr_accessor :name
#   @@all = []

#   def initialize(name)
#     @name = name
#     @@all << self
#   end
  
#   def self.all
#     @@all
#   end

#   def appointments
#     Appointment.all.find_all {|appointment| appointment.doctor == self}
#   end
  
#   def new_appointment(date, patient)
#     Appointment.new(date, patient, self)
#   end
  
#   def patients
#     appointments.map {|appointment| appointment.patient}
#   end
#   # def patients
#   #   appointments.each do |appointment| puts appointment.patient
#   #   end
#   # end
# end 

class Doctor

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  def patients
    appointments.map {|appointment| appointment.patient}
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(patient, date, self)
  end

end 