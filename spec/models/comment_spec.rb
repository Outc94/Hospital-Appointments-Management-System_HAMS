require 'rails_helper'

RSpec.describe Comment, type: :model do

  it "Validation does not pass if the message is empty" do
    Doctor.create(name: "Mouhamed", phone:"74567458768", email: "mouhamed@email.com",school: "UCAD", speciality: "Urology")
    Patient.create(first_name: "Mame", last_name: "Diarra", email: "diallo@mustapha.com", date_of_birth: "07-07-1996", age: "24", sex: "Female", phone: "24364675788", street: "Fandal", city: "Retorik", state: "Diourbel", zip: "08798697", language: "English")
    User.create(first_name: 'Ameth', last_name: 'Fall', email: 'ameth@gmail.com', password: 'password', password_confirmation: 'password', position: 'Doctor')
    comment = Comment.new(doctor_id: '1', message: '')
    expect(comment).not_to be_valid
  end

  it "validation passes If the message is present" do
    Doctor.create(name: "Mouhamed", phone:"74567458768", email: "mouhamed@email.com",school: "UCAD", speciality: "Urology")
    Patient.create(first_name: "Mame", last_name: "Diarra", email: "diallo@mustapha.com", date_of_birth: "07-07-1996", age: "24", sex: "Female", phone: "24364675788", street: "Fandal", city: "Retorik", state: "Diourbel", zip: "08798697", language: "English")
    User.create(first_name: 'Ameth', last_name: 'Fall', email: 'ameth@gmail.com', password: 'password', password_confirmation: 'password', position: 'Doctor')
    comment = Comment.new(doctor_id: '1', message: 'You need to come to the secretary for an important interview. Your appointment will be delayed')
    expect(comment).not_to be_valid
  end

end
