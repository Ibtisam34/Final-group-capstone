# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Users Table sample Data
User.create(username:'Luul', email:'nawal@gmail.com', password:'235678', role:0)
User.create(username:'Fash', email:'Fash4@gmail.com', password:'yuho456', role:0)
User.create(username:'Riyana', email:'Riyana1@gmail.com', password:'passmark', role:1)
User.create(username:'Odai', email:'Odai@gmail.com', password:'great478', role:1)
User.create(username:'girma', email:'girma@gmail.com', password:'codereviewer', role:1)

Doctor.create(name: "John Doe", specialization: "Cardiology", email: "johndoe@example.com", phone: "123-456-7890", user_id: 1)
Doctor.create(name: "Jane Smith", specialization: "Neurology", email: "janesmith@example.com", phone: "555-555-5555", user_id: 2)
Doctor.create(name: "Michael Johnson", specialization: "Oncology", email: "michaeljohnson@example.com", phone: "987-654-3210", user_id: 3)
Doctor.create(name: "Emily Chen", specialization: "Dermatology", email: "emilychen@example.com", phone: "111-222-3333", user_id: 4)

user1 = User.create(username:'girma', email:'girma@gmail.com', password:'codereviewer', role:1)
User.create(username:'girma', email:'girma@gmail.com', password:'codereviewer', role:1)

# Appointments table sample data
Appointment.create(user_id:1, doctor_id:1, pickup_date:'2023-03-13', return_date:'2023-03-24')
Appointment.create(user_id:2, doctor_id:3, pickup_date:'2023-03-24', return_date:'2023-03-27')
Appointment.create(user_id:3, doctor_id:2, pickup_date:'2023-03-27', return_date:'2023-03-30')
Appointment.create(user_id:4, doctor_id:5, pickup_date:'2023-03-4', return_date:'2023-04-06')
Appointment.create(user_id:5, doctor_id:4, pickup_date:'2023-03-10', return_date:'2023-03-20')
Appointment.create(pickup_date: "2020/23/1", return_date: "2023/09/4", user_id: user1.id, doctor_id: doc1.id )

doc1 = Doctor.create!(name:'Alex', email:'alex@gmail.com', phone:'1234565678', specialization: "Doc", user_id: user1.id)

Appointment.create(pickup_date: "2020/23/1", return_date: "2023/09/4", user_id: user1.id, doctor_id: doc1.id )

