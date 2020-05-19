# With this require, Capybara and other features required for Feature Spec are enabled.
require 'rails_helper'
# On the right side of this RSpec.feature, write the test item name like "task management feature" (grouped by do ~ end)
RSpec.feature "Task management function", type: :feature do
  # In scenario (alias of it), write the processing of the test for each item you want to check.
  scenario "Test Appointment list" do
    User.create(first_name: 'Ameth', last_name: 'Fall', email: 'ameth@gmail.com', password: 'password', password_confirmation: 'password', position: 'Doctor')
    visit 'users/sign_in'
    fill_in 'Email', with: 'ameth@gmail.com'
    fill_in 'Password', with: 'password'
    click_button 'Log in'
    visit appointments_path
    expect(page).to have_content 'Appointment List'
  end

   scenario "Test whether appointments are sorted by date when click on Sort by Date" do
     User.create(first_name: 'Ameth', last_name: 'Fall', email: 'ameth@gmail.com', password: 'password', password_confirmation: 'password', position: 'Secretary')
     visit 'users/sign_in'
     fill_in 'Email', with: 'ameth@gmail.com'
     fill_in 'Password', with: 'password'
     click_button 'Log in'
     visit '/appointments'
     click_on 'Sort by Date'
     assert Appointment.all.order('date desc')
   end

   scenario "Appointment creation" do
     Doctor.create(name: "Mouhamed", phone:"74567458768", email: "mouhamed@email.com",school: "UCAD", speciality: "Urology")
     Patient.create(first_name: "Mame", last_name: "Diarra", email: "diallo@mustapha.com", date_of_birth: "07-07-1996", age: "24", sex: "Female", phone: "24364675788", street: "Fandal", city: "Retorik", state: "Diourbel", zip: "08798697", language: "English")
     User.create(first_name: 'Ameth', last_name: 'Fall', email: 'ameth@gmail.com', password: 'password', password_confirmation: 'password', position: 'Secretary')
     visit 'users/sign_in'
     fill_in 'Email', with: 'ameth@gmail.com'
     fill_in 'Password', with: 'password'
     click_button 'Log in'
     visit new_appointment_path
     fill_in 'Date', with: '10.10.2022'
     fill_in 'Time', with: '3:23'
     click_button 'Create Appointment'
     expect(page).to have_content '3:23'
   end

end
