# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
BookingType.destroy_all

user = User.create!(
    booking_link: "buchi",
    email: "onyebuchi@meetme.com",
    name: "Onyebuchi Joseph",
    password: "password",
    password_confirmation: "password"
)

booking_type1 = BookingType.create!(
    color: "#38bdf8",
    description: "15 min test meeting",
    duration: 15,
    name: "15min",
    location: "Zoom",
    payment_required: false,
    price: nil,
    user: user
)

booking_type2 = BookingType.create!(
    color: "#fbdf24",
    description: "30 min test meeting",
    duration: 30,
    name: "30min",
    location: "Zoom",
    payment_required: false,
    price: nil,
    user: user
)

booking_type3 = BookingType.create!(
    color: "#acbdf8",
    description: "15 min test meeting",
    duration: 45,
    name: "45min",
    location: "Zoom",
    payment_required: true,
    price: 125,
    user: user
)

puts "Reset Completed Successfully"