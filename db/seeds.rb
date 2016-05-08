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
             

Member.create!(name:  "Member1",
             userName: "Member1",
             surrName: "One",
             addr1: "member one road",
             addr2: "member one city",
             tel: "1234567890",
             email: "member1@one.com",
             password:              "member1",
             password_confirmation: "member1",
             isAdmin: false)

Member.create!(name:  "Member2",
             userName: "Member2",
             surrName: "Two",
             addr1: "member two road",
             addr2: "member two city",
             tel: "1234567890",
             email: "member2@two.com",
             password:              "member2",
             password_confirmation: "member2",
             isAdmin: false)

Member.create!(name:  "Member3",
             userName: "Member3",
             surrName: "Three",
             addr1: "member three road",
             addr2: "member three city",
             tel: "1234567890",
             email: "member3@three.com",
             password:              "member3",
             password_confirmation: "member3",
             isAdmin: false)

Book.create!(title: "Horus Rising",
            isbn: "400",
            bookID: 1,
            description: "the seeds of Heresy are sown",
            author: "Dan Abnett",
            isAvailable: 0)
            

Book.create!(title: "False Gods",
            isbn: "412",
            bookID: 2,
            description: "The Heresy takes root",
            author: "Graham McNeill",
            isAvailable: 0)
            

Book.create!(title: "Galaxy in Flames",
            isbn: "415",
            bookID: 3,
            description: "The Heresy revealed",
            author: "Ben Counter",
            isAvailable: -1)


Book.create!(title: "The Flight of the Eisenstein",
            isbn: "407",
            bookID: 4,
            description: "The Heresy unfolds",
            author: "James Swallow",
            isAvailable: 1)
            
Book.create!(title: "Fulgrim",
            isbn: "510",
            bookID: 5,
            description: "Visions of treachery",
            author: "Graham McNeill",
            isAvailable: -1)
