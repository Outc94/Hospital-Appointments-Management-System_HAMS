# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name: "Mouhamed", last_name: "Diop", email: "diop@mouhamed.com", password: "mouhamed", password_confirmation: "mouhamed", position: "Secretary")
User.create(first_name: "Mustapha", last_name: "Diallo", email: "diallo@mustapha.com", password: "mustapha", password_confirmation: "mustapha", position: "Patient")
User.create(first_name: "Astou", last_name: "Thiam", email: "astou@thiam.com", password: "astouthiam", password_confirmation: "astouthiam", position: "Doctor")
User.create(first_name: "Synabou", last_name: "Thiam", email: "seynabou@thiam.com", password: "seynabou", password_confirmation: "seynabou", position: "Patient")
User.create(first_name: "Manar", last_name: "Diop", email: "manar@diop.com", password: "manardiop", password_confirmation: "manardiop", position: "Doctor")
User.create(first_name: "Ibrahima", last_name: "Faye", email: "ibrahima@hotmail.com", password: "ibrahima", password_confirmation: "ibrahima", position: "Patient")
User.create(first_name: "Sidy", last_name: "Diop", email: "sidy@diop.com", password: "sidydiop", password_confirmation: "sidydiop", position: "Doctor")
User.create(first_name: "Aladji", last_name: "Diallo", email: "aladji@diallo.com", password: "aladjidiallo", password_confirmation: "aladjidiallo", position: "Patient")
User.create(first_name: "Bouba", last_name: "Fall", email: "bouba@fall.com", password: "boubafall", password_confirmation: "boubafall", position: "Doctor")

Patient.create(first_name: "Mustapha", last_name: "Diallo", email: "diallo@mustapha.com", date_of_birth: "07-07-1996", age: "24", sex: "Male", phone: "24364675788", street: "Fandal", city: "Retorik", state: "Diourbel", zip: "08798697", language: "English")
Patient.create(first_name: "Seynabou", last_name: "Thiam", email: "seynabou@thiam.com", date_of_birth: "08-06-1997", age: "23", sex: "Female", phone: "7744568980", street: "Diamalaye", city: "Yoff", state: "Dakar", zip: "65785678", language: "French")
Patient.create(first_name: "Ibrahima", last_name: "Faye", email: "ibrahima@hotmail.com", date_of_birth: "07-07-1995", age: "25", sex: "Male", phone: "7658675843", street: "Mayor", city: "Retorik", state: "Diourbel", zip: "08798697", language: "Japanese")
Patient.create(first_name: "Aladji", last_name: "Diallo", email: "aladji@diallo.com", date_of_birth: "08-06-1994", age: "26", sex: "Male", phone: "445234536534", street: "Hibikino", city: "Kitakyushu", state: "Fukuoka", zip: "8080135", language: "English")

Doctor.create(name: "Sidy Diop", phone: "65756785", email: "sidy@diop.com" , school: "WASEDA", speciality: "Urology")
Doctor.create(name: "Astou Thiam", phone: "8987987987998", email: "astou@thiam.com", school: "UCAD", speciality:  "Internal Medicine")
Doctor.create(name: "Manar Diop", phone: "5675687699965", email: "manar@diop.com", school: "ESP", speciality: "Emergency Medicine")
Doctor.create(name: "Bouba Fall", phone: "9789787699965", email: "bouba@fall.com", school: "Tokyo University", speciality: "Diagnostic Radiology" )

Appointment.create(doctor_id: "1", patient_id: "1", date: "10-9-2021", time: "10:30")
Appointment.create(doctor_id: "2", patient_id: "2", date: "11-5-2020", time: "9:30")
Appointment.create(doctor_id: "3", patient_id: "3", date: "9-6-2020", time: "11:00")
