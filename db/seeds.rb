# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Member.create!(name:  "Admin",
             userName: "admin",
             surrName: "admin",
             addr1: "adminadminadminadmin",
             addr2: "adminadminadmin",
             tel: "1234567890",
             email: "admin@admin.com",
             password:              "adminadmin",
             password_confirmation: "adminadmin",
             isAdmin: true)
             

Book.create!(title: "Horus Rising",
            isbn: "412",
            bookID: 4,
            description: "the seeds of Heresy are sown",
            author: "Dan Abnett",
            isAvailable: 0)