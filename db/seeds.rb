# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Patient.create(first_name: "Mame", last_name: "Diarra", date_of_birth: "1997-06-08", sex: "Female", phone: "7744568980", street: "Diamalaye", city: "Yoff", state: "CT", zip: "65785678", language: "French")
Doctor.create(name: "Nafissatou", phone: "769785985", school: "UCAD", speciality: "Family Medicine")
Patient.create(first_name: "Papa", last_name: "Diop", date_of_birth: "1999-06-08", sex: "Male", phone: "7744565780", street: "King Street", city: "Selma", state: "AL", zip: "98475974956", language: "English")
Doctor.create(name: "Mustapha", phone: "789734598743", school: "WASEDA", speciality: "Neurology")
Patient.create(first_name: "Sidy", last_name: "Diop", date_of_birth: "1980-06-08", sex: "Male", phone: "675675676750", street: "King Street", city: "Selma", state: "CT", zip: "6547654", language: "Japanese")
Doctor.create(name: "PaDiop", phone: "67587657865576", school: "Kyudai", speciality: "Internal Medicine")
Patient.create(first_name: "Yang", last_name: "Fan", date_of_birth: "1995-06-08", sex: "Male", phone: "548657878", street: "Hibikino", city: "Kitakyushu", state: "AL", zip: "898769786", language: "English")
Doctor.create(name: "Luthfi", phone: "65756785", school: "Waseda", speciality: "Urology")
Patient.create(first_name: "Wang", last_name: "San", date_of_birth: "1998-09-09", sex: "Male", phone: "09238467745", street: "Hibikino", city: "Kitakyushu", state: "CT", zip: "658586754", language: "Chinese")
Doctor.create(name: "Seynabou", phone: "Thiam", school: "ESP", speciality: "Surgery")
Patient.create(first_name: "Pape", last_name: "Demba", date_of_birth: "1985-03-04", sex: "Male", phone: "65756768", street: "Hataga", city: "Tokyo", state: "AL", zip: "674567645", language: "Japanese")
Doctor.create(name: "Yacine", phone: "7687689", school: "Lapin Bleus", speciality: "Pathology")
