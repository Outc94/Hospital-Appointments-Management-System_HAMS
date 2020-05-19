require 'rails_helper'


RSpec.feature "User Login management", type: :feature do

  scenario "user registration with successful validations" do
    visit 'users/sign_up'
    fill_in 'First Name', with: 'Mouhamed'
    fill_in 'Last Name', with: 'Diop'
    fill_in 'Email', with: 'mouhamed@diop.com'
    fill_in 'Password', with: 'diamalaye'
    fill_in 'Confirm', with: 'diamalaye'
    fill_in 'Are You a Patient or Doctor', with: 'Patient'
    click_button 'Sign up'
    expect(current_path).to eq '/'
  end

  scenario "successful user login and logout" do
    User.create(first_name: 'Ameth', last_name: 'Fall', email: 'ameth@gmail.com', password: 'password', password_confirmation: 'password', position: 'Doctor')
    visit 'users/sign_in'
    fill_in 'Email', with: 'ameth@gmail.com'
    fill_in 'Password', with: 'password'
    click_button 'Log in'
    expect(current_path).to eq '/'
    click_link 'Log Out'
    expect(current_path).to eq '/users/sign_in'
  end

  scenario "expect page to redirect to login when not logged in" do
    visit doctors_path
    save_and_open_page
  end


end
