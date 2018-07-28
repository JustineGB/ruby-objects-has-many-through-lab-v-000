#belong to patients and doctors. This is the JOINER
require 'pry'

class Appointment
  attr_accessor :doctor, :patient, :date

  @@all = []

  def initialize(patient, doctor, patient, date)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end

end
