# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
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
Listing.create(category: "Men" ,title: "Suit, Hugo Boss" ,description: "New Suit, never wear", size: "52",price: "350" ,location: "London",brand: "Hugo Boss", user: jules )
Listing.create(category: "Men" ,title: "Beige Suit" ,description: "Beige Suit, perfect for the summer" , size: "48",price: "120" ,location: "Amsterdam",brand: "Calvin", user: grant )
Listing.create(category: "Women" ,title: "Beautiful Wrap Dress" ,description: "Wrap Dress from Revolve, worn once", size: "38",price: "80",location: "Paris" ,brand: "Asos", user: gwen )
Listing.create(category: "Women" ,title: "Beautiful Wrap Dress" ,description: "Wrap Dress from Revolve, worn once", size: "38",price: "80",location: "Paris" ,brand: "Asos", user: juliette)

puts "All goood, congrats"
