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

  def new_appointment(doctor, date)
    #binding.pry
    Appointment.new(doctor, date, self )
  end

  def doctors
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end
end
