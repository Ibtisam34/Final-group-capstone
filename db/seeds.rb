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
user1 = User.create(username:'girma', email:'girma@gmail.com', password:'codereviewer', role:1)

doc1 = Doctor.create!(name:'Alex', email:'alex@gmail.com', phone:'1234565678', specialization: "Doc", user_id: user1.id)

Appointment.create(pickup_date: "2020/23/1", return_date: "2023/09/4", user_id: user1.id, doctor_id: doc1.id )