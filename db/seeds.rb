# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"



puts "Cleaning database..."
User.destroy_all

puts "Creating users..."
gaby = User.create(first_name: "Gaby", last_name: "vDB", address: "Keizersgracht, Amsterdam", phone_number: "+ 31 6 52641753", email: "gvdb@test.com", password: "paradise")
juliette = User.create(first_name: "Juliette", last_name: "B.", address: "George st, London", phone_number: "+ 44 7448493403", email: "juliette@test.com", password: "paradise")
gwen = User.create(first_name: "Gwen", last_name: "L.", address: "rue de l'église, Paris", phone_number: "+ 33 612293094", email: "gwenl@test.com", password: "paradise")
gabriel = User.create(first_name: "Gabriel", last_name: "C.", address: "Batu Bolong Beach, Canggu", phone_number: "+ 31 6 52641867", email: "gabrielc@test.com", password: "paradise" )
jules = User.create(first_name: "Jules", last_name: "D.", address: "Perangan, Canggu", phone_number: "+ 44 7448493673", email: "julesd@test.com", password: "paradise")
grant = User.create(first_name: "Grant", last_name: "N.", address: "Berawa Beach, Canggu", phone_number: "+ 33 612294394", email: "grantn@test.com", password: "paradise")

puts "Creating listings..."
hugoboss = Listing.create(category: "Men" ,title: "Suit, Hugo Boss" ,description: "New Suit, never wear", size: "52",price: "250" ,location: "London",brand: "Hugo Boss", user: jules )
file = URI.open("https://images.hugoboss.com/is/image/hugobossdm/20210614_HB_SR22_BM_Additional_Content_Shooting_L14_1013_sRGB?%24large%24&cropN=0.0286738,0.0507812,0.958184,0.9265625&align=0,-1&fit=crop,1&ts=1652259588625&wid=376&hei=556")
hugoboss.photo.attach(io: file, filename: "suits.png", content_type: "image/png")
hugoboss.save

defrusac =Listing.create(category: "Men" ,title: "Beige Suit" ,description: "Beige Suit, perfect for the summer" , size: "48",price: "320" ,location: "Amsterdam",brand: "De Frusac", user: grant )
file = URI.open("https://static.fursac.com/data/suit-men-separate-suits-yellow-22ec3vato-vx1353-pl0121104.1642615079.jpg")
defrusac.photo.attach(io: file, filename: "suits.jpg", content_type: "image/jpg")
defrusac.save

revolve = Listing.create(category: "Women" ,title: "Beautiful Wrap Dress" ,description: "Wrap Dress from Revolve, worn once", size: "38",price: "80",location: "Paris" ,brand: "Asos", user: gwen )
file = URI.open("https://is4.revolveassets.com/images/p4/n/z/MASO-WD366_V1.jpg")
revolve.photo.attach(io: file, filename: "suits.jpg", content_type: "image/jpg")
revolve.save

asos = Listing.create(category: "Women" ,title: "Cocktail Midi Dress" ,description: "Perfect for a cocktail party, wedding.", size: "42",price: "80",location: "Paris" ,brand: "Asos", user: juliette)
file = URI.open("https://cdna.lystit.com/photos/asos/38b570a0/asos-Green-Embellished-Cami-Midi-Dress.jpeg")
asos.photo.attach(io: file, filename: "suits.jpg", content_type: "image/jpg")
asos.save

puts "All goood, congrats"
