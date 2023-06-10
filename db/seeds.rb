# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

5.times do |i|
    User.create!(
      first_name: "First Name #{i+1}",
      last_name: "Last Name #{i+1}",
      email: "user#{i+1}@example.com",
      password: "password"
    )
  end
  
  # Crear tweets para cada usuario
  User.all.each do |user|
    5.times do |i|
      user.tweets.create!(
        body: "Tweet information blabla  blalbalbalbalb asdasd#{i+1}"
      )
    end
  end