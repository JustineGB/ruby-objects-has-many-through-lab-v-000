#patients access doctors through appts
require 'pry'

class Patient
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all #writer method for listing out all of the instances stored in the array
    @@all
  end

  def new_appointment(doctor, date) #this instance meth is taking in 2 arguments (doctor and date which are attaccess in the appt class and thus they are an instance of that class and can acess that classes methods and the doctor class methods?)
    #binding.pry
    Appointment.new(doctor, date, self ) #creating a new instance of Appointment (passing in the arguments, self as one) Should know about this instance know since I called self??.
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def doctors

    end
  end

end
