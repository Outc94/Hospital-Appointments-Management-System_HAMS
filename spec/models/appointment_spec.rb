require 'rails_helper'

RSpec.describe Appointment, type: :model do

  it "Validation does not pass if the date is empty" do
    Doctor.create(name: "Mouhamed", phone:"74567458768", email: "mouhamed@email.com",school: "UCAD", speciality: "Urology")
    Patient.create(first_name: "Mame", last_name: "Diarra", email: "diallo@mustapha.com", date_of_birth: "07-07-1996", age: "24", sex: "Female", phone: "24364675788", street: "Fandal", city: "Retorik", state: "Diourbel", zip: "08798697", language: "English")
    appointment = Appointment.new(doctor_id: '1', patient_id: '1', date: '', time: '3:25')
    expect(appointment).not_to be_valid
  end

  it "Validation does not pass if time is empty" do
    Doctor.create(name: "Mouhamed", phone:"74567458768", email: "mouhamed@email.com",school: "UCAD", speciality: "Urology")
    Patient.create(first_name: "Mame", last_name: "Diarra", email: "diallo@mustapha.com", date_of_birth: "07-07-1996", age: "24", sex: "Female", phone: "24364675788", street: "Fandal", city: "Retorik", state: "Diourbel", zip: "08798697", language: "English")
    appointment = Appointment.new(doctor_id: '1', patient_id: '1', date: '2.4.2024', time: '')
    expect(appointment).not_to be_valid
  end

  it "validation passes If both the date and time are present" do
    Doctor.create(name: "Mouhamed", phone:"74567458768", email: "mouhamed@email.com",school: "UCAD", speciality: "Urology")
    Patient.create(first_name: "Mame", last_name: "Diarra", email: "diallo@mustapha.com", date_of_birth: "07-07-1996", age: "24", sex: "Female", phone: "24364675788", street: "Fandal", city: "Retorik", state: "Diourbel", zip: "08798697", language: "English")
    appointment = Appointment.new(doctor_id: '1', patient_id: '1', date: '2.4.2024', time: '3:25')
    expect(appointment).not_to be_valid
  end

end
