require 'rails_helper'

RSpec.describe Note, type: :model do

  it "Validation does not pass if the message is empty" do
    Doctor.create(name: "Mouhamed", phone:"74567458768", email: "mouhamed@email.com",school: "UCAD", speciality: "Urology")
    Patient.create(first_name: "Mame", last_name: "Diarra", email: "diallo@mustapha.com", date_of_birth: "07-07-1996", age: "24", sex: "Female", phone: "24364675788", street: "Fandal", city: "Retorik", state: "Diourbel", zip: "08798697", language: "English")
    User.create(first_name: 'Ameth', last_name: 'Fall', email: 'ameth@gmail.com', password: 'password', password_confirmation: 'password', position: 'Doctor')
    note = Note.new(patient_id: '1', message: '')
    expect(note).not_to be_valid
  end

  it "validation passes If the message is present" do
    Doctor.create(name: "Mouhamed", phone:"74567458768", email: "mouhamed@email.com",school: "UCAD", speciality: "Urology")
    Patient.create(first_name: "Mame", last_name: "Diarra", email: "diallo@mustapha.com", date_of_birth: "07-07-1996", age: "24", sex: "Female", phone: "24364675788", street: "Fandal", city: "Retorik", state: "Diourbel", zip: "08798697", language: "English")
    User.create(first_name: 'Ameth', last_name: 'Fall', email: 'ameth@gmail.com', password: 'password', password_confirmation: 'password', position: 'Doctor')
    note = Note.new(patient_id: '1', message: 'Your results from our last appointment is available. I have sent it to you in your email')
    expect(note).not_to be_valid
  end

end
