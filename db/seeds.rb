# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create!(name: "Luke", movie: movies.first)
require "open-uri"

puts "Cleaning database..."
Rental.destroy_all


User.destroy_all

puts "Creating users..."

# women
gaby = User.create!(first_name: "Gaby", last_name: "vDB", address: "Keizersgracht, Amsterdam", phone_number: "+ 31 6 52641753", email: "gvdb@test.com", password: "paradise")
juliette = User.create!(first_name: "Juliette", last_name: "B.", address: "George st, London", phone_number: "+ 44 7448493403", email: "juliette@test.com", password: "paradise")
gwen = User.create!(first_name: "Gwen", last_name: "L.", address: "rue de l'église, Paris", phone_number: "+ 33 612293094", email: "gwenl@test.com", password: "paradise")
april = User.create!(first_name: "April", last_name: "D.", address: "Morton Street, New York", phone_number: "+ 33 612293094", email: "aprild@test.com", password: "paradise")
silvia = User.create!(first_name: "Silvia", last_name: "P.", address: "Av. de Sarrià, Barcelone", phone_number: "+ 33 643563094", email: "silviap@test.com", password: "paradise")
bodil = User.create!(first_name: "Bodil", last_name: "E.", address: "Sulmgasse, Wien", phone_number: "+ 33 643539804", email: "bodile@test.com", password: "paradise")
franka = User.create!(first_name: "Franka", last_name: "S.", address: "Lindenstraße, Berlin", phone_number: "+ 33 643539804", email: "franka@test.com", password: "paradise")

#men
gabriel = User.create!(first_name: "Gabriel", last_name: "C.", address: "Batu Bolong Beach, Canggu", phone_number: "+ 31 6 52641867", email: "gabrielc@test.com", password: "paradise" )
jules = User.create!(first_name: "Jules", last_name: "D.", address: "Perangan, Canggu", phone_number: "+ 44 7448493673", email: "julesd@test.com", password: "paradise")
grant = User.create!(first_name: "Grant", last_name: "N.", address: "Berawa Beach, Canggu", phone_number: "+ 33 612294394", email: "grantn@test.com", password: "paradise")
eric = User.create!(first_name: "Eric", last_name: "J.", address: "Morton Street, New York", phone_number: "+ 44 2938493673", email: "ericj@test.com", password: "paradise")
viktor = User.create!(first_name: "eric", last_name: "F.", address: " Tigris u. 28, Budapest", phone_number: "+ 44 2938493673", email: "viktorf@test.com", password: "paradise")
alex = User.create!(first_name: "Alex", last_name: "R.", address: " rue des Boulains, Guernesey", phone_number: "+ 44 2956193673", email: "alexr@test.com", password: "paradise")
puts "Creating listings..."


#men's clothes

# SEEDS DONE
hugoboss = Listing.create!(category: "Men",title: "Suit, Hugo Boss", description: "New Suit, never wear. Perfect for a wedding", size: "52", price: "150", location: "London", brand: "Hugo Boss", user: jules )
file = URI.open("https://images.hugoboss.com/is/image/boss/hbeu50480307_021_300?$large$=&fit=crop,1&align=1,1&wid=768&qlt=80&fmt=webp")
hugoboss.photos.attach(io: file, filename: "suits.png", content_type: "image/png")
file = URI.open("https://images.hugoboss.com/is/image/boss/hbeu50480307_021_360?$large$=&fit=crop,1&align=1,1&wid=1500&hei=2275")
hugoboss.photos.attach(io: file, filename: "suits.png", content_type: "image/png")
file = URI.open("https://images.hugoboss.com/is/image/boss/hbeu50480307_021_600?$large$=&fit=crop,1&align=1,1&wid=1500&hei=2275")
hugoboss.photos.attach(io: file, filename: "suits.png", content_type: "image/png")
file = URI.open("https://images.hugoboss.com/is/image/boss/hbeu50480307_021_350?$large$=&fit=crop,1&align=1,1&wid=1500&hei=2275")
hugoboss.photos.attach(io: file, filename: "suits.png", content_type: "image/png")
hugoboss.save

# SEEDS DONE
defrusac = Listing.create!(category: "Men", title: "Beige Suit, 3 pieces", description: "Beige Suit, perfect for the summer" , size: "48", price: "150", location: "Amsterdam", brand: "De Frusac", user: grant )
file = URI.open("https://cdn.shopify.com/s/files/1/1481/1280/products/N6vbQrpI.jpg?v=1633807332")
defrusac.photos.attach(io: file, filename: "suits2.jpg", content_type: "image/jpg")
file = URI.open("https://cdn.shopify.com/s/files/1/1481/1280/products/CyPiMKaY_1024x.jpg?v=1633807331")
defrusac.photos.attach(io: file, filename: "suits2.jpg", content_type: "image/jpg")
file = URI.open("https://cdn.shopify.com/s/files/1/1481/1280/products/xrJhuMLs_1024x.jpg?v=1633807332")
defrusac.photos.attach(io: file, filename: "suits2.jpg", content_type: "image/jpg")
file = URI.open("https://cdn.shopify.com/s/files/1/1481/1280/products/vq0eAz6k_1024x.jpg?v=1633807332")
defrusac.photos.attach(io: file, filename: "suits2.jpg", content_type: "image/jpg")
defrusac.save

# # SEEDS DONE
# ralphlauren = Listing.create!(category: "Men", title: "Polo Soft Glen Plaid Wool Suit", description: "The Polo Soft fit puts a modern spin on classic preppy style with a natural shoulder and a half-canvassed construction. This version is tailored in Italy from an English wool fabric.", size: "46", price: "450", location: "Guernesay", brand: "Ralph Lauren", user: alex )
# file = URI.open("https://www.rlmedia.io/is/image/PoloGSI/s7-1435918_alternate10?$plpDeskRFAlt$")
# ralphlauren.photos.attach(io: file, filename: "suits3.jpg", content_type: "image/jpg")
# file = URI.open("https://www.rlmedia.io/is/image/PoloGSI/s7-1435918_alternate3?$rl_df_pdp_5_7$")
# ralphlauren.photos.attach(io: file, filename: "suits3.jpg", content_type: "image/jpg")
# file = URI.open("https://www.rlmedia.io/is/image/PoloGSI/s7-1435918_alternate6?$rl_df_pdp_5_7$")
# ralphlauren.photos.attach(io: file, filename: "suits3.jpg", content_type: "image/jpg")
# file = URI.open("https://www.rlmedia.io/is/image/PoloGSI/s7-1435918_alternate1?$rl_df_pdp_5_7$")
# ralphlauren.photos.attach(io: file, filename: "suits3.jpg", content_type: "image/jpg")
# ralphlauren.save

# SEEDS DONE
hawes = Listing.create!(category: "Men", title: "Navy Suit", description: "Navy Suit, perfect for the summer", size: "50", price: "150", location: "New York", brand: "Hawes and Curtis", user: eric )
file = URI.open("https://handcmediastorage.blob.core.windows.net/productimages/JK/JKPRAS10-G01V-152879-800px-1040px.jpg")
hawes.photos.attach(io: file, filename: "suits4.jpg", content_type: "image/jpg")
file = URI.open("https://handcmediastorage.blob.core.windows.net/productimages/JK/JKPRAS10-G01V-152880-800px-1040px.jpg")
hawes.photos.attach(io: file, filename: "suits4.jpg", content_type: "image/jpg")
file = URI.open("https://handcmediastorage.blob.core.windows.net/productimages/JK/JKPRAS10-G01V-152878-800px-1040px.jpg")
hawes.photos.attach(io: file, filename: "suits4.jpg", content_type: "image/jpg")
file = URI.open("https://handcmediastorage.blob.core.windows.net/productimages/JK/JKPRAS10-G01V-152881-800px-1040px.jpg")
hawes.photos.attach(io: file, filename: "suits4.jpg", content_type: "image/jpg")
hawes.save

# SEEDS DONE
cos = Listing.create!(category: "Men", title: "Casual Suit", description: "Casual Suit perfect for everyday or a country wedding", size: "50", price: "150", location: "Paris", brand: "Cos", user: grant )
file = URI.open("https://lp2.hm.com/hmgoepprod?set=quality%5B79%5D%2Csource%5B%2F08%2F46%2F0846dbfb33c1767fe41149badf69ca7c87a023ba.jpg%5D%2Corigin%5Bdam%5D%2Ccategory%5B%5D%2Ctype%5BLOOKBOOK%5D%2Cres%5Bm%5D%2Chmver%5B1%5D&call=url[file:/product/main]")
cos.photos.attach(io: file, filename: "suits5.jpg", content_type: "image/jpg")
file = URI.open("https://lp2.hm.com/hmgoepprod?set=format%5Bwebp%5D%2Cquality%5B79%5D%2Csource%5B%2F48%2Fd5%2F48d5e4e053775abd16ba6c0673812d1e1ac9c566.jpg%5D%2Corigin%5Bdam%5D%2Ccategory%5B%5D%2Ctype%5BLOOKBOOK%5D%2Cres%5Bm%5D%2Chmver%5B1%5D&call=url%5Bfile%3A%2Fproduct%2Fmain%5D")
cos.photos.attach(io: file, filename: "suits5.jpg", content_type: "image/jpg")
file = URI.open("https://lp2.hm.com/hmgoepprod?set=format%5Bwebp%5D%2Cquality%5B79%5D%2Csource%5B%2F70%2F55%2F705598541e6e381398c59be975a3f5437c3c2409.jpg%5D%2Corigin%5Bdam%5D%2Ccategory%5B%5D%2Ctype%5BLOOKBOOK%5D%2Cres%5Bm%5D%2Chmver%5B1%5D&call=url%5Bfile%3A%2Fproduct%2Fmain%5D")
cos.photos.attach(io: file, filename: "suits5.jpg", content_type: "image/jpg")
file = URI.open("https://lp2.hm.com/hmgoepprod?set=format%5Bwebp%5D%2Cquality%5B79%5D%2Csource%5B%2Fc0%2F4a%2Fc04a2af91db9cbca710bea2d34da861055d303e9.jpg%5D%2Corigin%5Bdam%5D%2Ccategory%5B%5D%2Ctype%5BLOOKBOOK%5D%2Cres%5Bm%5D%2Chmver%5B1%5D&call=url%5Bfile%3A%2Fproduct%2Fmain%5D")
cos.photos.attach(io: file, filename: "suits5.jpg", content_type: "image/jpg")
cos.save

# SEEDS DONE
aidanmax = Listing.create!(category: "Men", title: "Black/Grey Suit", description: "Very nice black/grey suit", size: "48", price: "150", location: "Amsterdam", brand: "Aidan Max", user: alex )
file = URI.open("https://img01.ztat.net/article/spp-media-p1/82dd64f9a5a34dc1831662df15992cf9/a2f99d36173b444881b970d4de0b7c4e.jpg?imwidth=762")
aidanmax.photos.attach(io: file, filename: "suits6.jpg", content_type: "image/jpg")
file = URI.open("https://img01.ztat.net/article/spp-media-p1/755a5c0b828e4658a5f25f9f7cf5ea11/b7cf50b0ad2247e9b06f13c29b90ad28.jpg?imwidth=762")
aidanmax.photos.attach(io: file, filename: "suits6.jpg", content_type: "image/jpg")
file = URI.open("https://img01.ztat.net/article/spp-media-p1/b3a42bf49d394701a14cc576f1a257c2/dac58becb4b7462aa027aad3814709c4.jpg?imwidth=762")
aidanmax.photos.attach(io: file, filename: "suits6.jpg", content_type: "image/jpg")
file = URI.open("https://img01.ztat.net/article/spp-media-p1/4e5ee92f84e74e0cbf2b076faa35d5bd/7d9d02d3642b4df0b59026db94dbbaf2.jpg?imwidth=762")
aidanmax.photos.attach(io: file, filename: "suits6.jpg", content_type: "image/jpg")
aidanmax.save


# SEEDS DONE
isaacdewhirst = Listing.create!(category: "Men", title: "3 Pieces Suit", description: "Nice 3 pieces suit", size: "50", price: "150", location: "London", brand: "Isaac Dewhirst", user: jules )
file = URI.open("https://img01.ztat.net/article/spp-media-p1/12719982d3073649aed164f0f8e7f32a/12b40dca2b9446179deeb92f197e04a0.jpg?imwidth=1800")
isaacdewhirst.photos.attach(io: file, filename: "suits7.jpg", content_type: "image/jpg")
file = URI.open("https://img01.ztat.net/article/spp-media-p1/818289740cc53d64aca5e6d1f9ef7e2c/03224a36bb5b455090c52b3736d4bf16.jpg?imwidth=762")
isaacdewhirst.photos.attach(io: file, filename: "suits7.jpg", content_type: "image/jpg")
file = URI.open("https://img01.ztat.net/article/spp-media-p1/321d40cc61263c5aaa997faf2ca34d5e/4a15b14d25574189b3d69132fb0568c0.jpg?imwidth=762")
isaacdewhirst.photos.attach(io: file, filename: "suits7.jpg", content_type: "image/jpg")
file = URI.open("https://img01.ztat.net/article/spp-media-p1/0f7199afae3337a99dad1c72694638fa/700fbdc742ec47aa82117a41785b71e0.jpg?imwidth=762")
isaacdewhirst.photos.attach(io: file, filename: "suits7.jpg", content_type: "image/jpg")
isaacdewhirst.save

# SEEDS DONE
calvinklein = Listing.create!(category: "Men", title: "Blue Suit for wedding", description: "Blue Suit for wedding", size: "50", price: "150", location: "Paris", brand: "Lindbergh ", user: grant )
file = URI.open("https://calvinklein-eu.scene7.com/is/image/CalvinKleinEU/K10K103083_477_alternate1?$main$")
calvinklein.photos.attach(io: file, filename: "suits8.jpg", content_type: "image/jpg")
file = URI.open("https://calvinklein-eu.scene7.com/is/image/CalvinKleinEU/K10K103083_477_alternate2?$main$")
calvinklein.photos.attach(io: file, filename: "suits8.jpg", content_type: "image/jpg")
file = URI.open("https://calvinklein-eu.scene7.com/is/image/CalvinKleinEU/K10K103083_477_main?$main$")
calvinklein.photos.attach(io: file, filename: "suits8.jpg", content_type: "image/jpg")
file = URI.open("https://calvinklein-eu.scene7.com/is/image/CalvinKleinEU/K10K103083_477_alternate3?$main$")
calvinklein.photos.attach(io: file, filename: "suits8.jpg", content_type: "image/jpg")
calvinklein.save

# SEEDS DONE
lindbergh = Listing.create!(category: "Men", title: "Blue Suit for wedding", description: "Blue Suit for wedding", size: "50", price: "150", location: "Paris", brand: "Lindbergh ", user: grant )
file = URI.open("https://img01.ztat.net/article/spp-media-p1/c8bd25be0c3b36b2b2f68a7c7b306bf0/597ebf8a05254097969e29a64cfc8a5f.jpg?imwidth=762")
lindbergh.photos.attach(io: file, filename: "suits8.jpg", content_type: "image/jpg")
file = URI.open("https://img01.ztat.net/article/spp-media-p1/d887f44c928031d4943dc70cc616427e/904ae09c181141b8add11a1b3fa381e7.jpg?imwidth=762")
lindbergh.photos.attach(io: file, filename: "suits8.jpg", content_type: "image/jpg")
file = URI.open("https://img01.ztat.net/article/spp-media-p1/cbc33c5be7993065ae9e4f4203141979/4b6e77554a2b4e108c73a761bcaa1bd9.jpg?imwidth=1800")
lindbergh.photos.attach(io: file, filename: "suits8.jpg", content_type: "image/jpg")
file = URI.open("https://img01.ztat.net/article/spp-media-p1/c8bd25be0c3b36b2b2f68a7c7b306bf0/597ebf8a05254097969e29a64cfc8a5f.jpg?imwidth=762")
lindbergh.photos.attach(io: file, filename: "suits8.jpg", content_type: "image/jpg")
lindbergh.save


#women's clothes

# SEEDS DONE
revolve = Listing.create!(category: "Women", title: "Blue Dress for Cocktails" ,description: "Wrap Dress from Revolve, worn once", size: "38",price: "80",location: "Paris" ,brand: "Asos", user: gwen )
file = URI.open("https://www.vila.com/dw/image/v2/BDTC_PRD/on/demandware.static/-/Sites-pim-catalog/default/dwafed432c/pim-static/VL/14077575/14077575_KentuckyBlue_005.jpg?sw=675&sh=900")
revolve.photos.attach(io: file, filename: "dress1.jpg", content_type: "image/jpg")
file = URI.open("https://www.vila.com/dw/image/v2/BDTC_PRD/on/demandware.static/-/Sites-pim-catalog/default/dw64c9f80e/pim-static/VL/14077575/14077575_KentuckyBlue_003.jpg?sw=900&sh=1200")
revolve.photos.attach(io: file, filename: "dress1.jpg", content_type: "image/jpg")
file = URI.open("https://www.vila.com/dw/image/v2/BDTC_PRD/on/demandware.static/-/Sites-pim-catalog/default/dwafed432c/pim-static/VL/14077575/14077575_KentuckyBlue_005.jpg?sw=675&sh=900")
revolve.photos.attach(io: file, filename: "dress1.jpg", content_type: "image/jpg")
file = URI.open("https://www.vila.com/dw/image/v2/BDTC_PRD/on/demandware.static/-/Sites-pim-catalog/default/dw2255583d/pim-static/VL/14063357/14063357_KentuckyBlue_003.jpg?sw=900&sh=1200")
revolve.photos.attach(io: file, filename: "dress1.jpg", content_type: "image/jpg")
revolve.save


# SEEDS DONE
asos = Listing.create!(category: "Women", title: "Cocktail Midi Dress" ,description: "Perfect for a cocktail party, wedding.", size: "42", price: "80", location: "Paris", brand: "Asos", user: juliette)
file = URI.open("https://cdna.lystit.com/photos/asos/c2b6b977/asos-Blue-Embellished-Cami-Midi-Dress.jpeg")
asos.photos.attach(io: file, filename: "dress2.jpg", content_type: "image/jpg")
file = URI.open("https://cdna.lystit.com/520/650/n/photos/asos/eabde716/asos-Blue-Embellished-Cami-Midi-Dress.jpeg")
asos.photos.attach(io: file, filename: "dress2.jpg", content_type: "image/jpg")
file = URI.open("https://images.asos-media.com/products/asos-edition-embellished-cami-midi-dress/14788658-3?$n_640w$&wid=513&fit=constrain")
asos.photos.attach(io: file, filename: "dress2.jpg", content_type: "image/jpg")
file = URI.open("https://images.asos-media.com/products/asos-edition-embellished-cami-midi-dress/14788658-4?$n_640w$&wid=513&fit=constrain")
asos.photos.attach(io: file, filename: "dress2.jpg", content_type: "image/jpg")
asos.save


# SEEDS DONE
michellemason = Listing.create!(category: "Women", title: "Beautiful Wrap Dress" ,description: "Dress from Revolve, worn once", size: "40",price: "80",location: "Berlin" ,brand: "Michelle Mason", user: franka )
file = URI.open("https://cdn-images.farfetch-contents.com/18/07/92/79/18079279_38473532_1000.jpg")
michellemason.photos.attach(io: file, filename: "dress3.jpg", content_type: "image/jpg")
file = URI.open("https://cdn-images.farfetch-contents.com/18/07/92/79/18079279_38474302_1000.jpg")
michellemason.photos.attach(io: file, filename: "dress3.jpg", content_type: "image/jpg")
file = URI.open("https://cdn-images.farfetch-contents.com/18/07/92/79/18079279_38470654_1000.jpg")
michellemason.photos.attach(io: file, filename: "dress3.jpg", content_type: "image/jpg")
file = URI.open("https://cdn-images.farfetch-contents.com/18/07/92/79/18079279_38473533_1000.jpg")
michellemason.photos.attach(io: file, filename: "dress3.jpg", content_type: "image/jpg")
michellemason.save

beauut = Listing.create!(category: "Women", title: "Blue Dress" ,description: "Perfect for a cocktail party, wedding.", size: "42", price: "80", location: "Amsterdam", brand: "Beauut", user: gaby)
file = URI.open("https://i.pinimg.com/originals/df/3f/dd/df3fddab399442fa9aa0a94c93f880e1.png")
beauut.photos.attach(io: file, filename: "dress4.jpg", content_type: "image/jpg")
beauut.save

asostwo = Listing.create!(category: "Women", title: "White Bridesmaid Dress" ,description: "Worn once at a wedding.", size: "36",price: "100", location: "New York", brand: "Asos", user: april)
file = URI.open("https://images.asos-media.com/products/maids-to-measure-robe-longue-dos-nu-en-mousseline-pour-demoiselle-dhonneur-avec-dos-fantaisie/14226764-1-creamsoda?$n_960w$&wid=952&fit=constrain")
asostwo.photos.attach(io: file, filename: "dress5.jpg", content_type: "image/jpg")
asostwo.save

revolvethree = Listing.create!(category: "Women", title: "Beautiful Wrap Dress" ,description: "Wrap Dress from Revolve, worn once", size: "38",price: "80",location: "Wien" ,brand: "Revolve", user: bodil )
file = URI.open("https://is4.revolveassets.com/images/p4/n/z/MOTO-WD11_V1.jpg")
revolvethree.photos.attach(io: file, filename: "dress6.jpg", content_type: "image/jpg")
revolvethree.save

asosthree = Listing.create!(category: "Women", title: "Cocktail Midi Dress" ,description: "Perfect for a cocktail party, wedding.", size: "46",price: "50",location: "Barcelona" ,brand: "Asos", user: silvia)
file = URI.open("https://i.pinimg.com/736x/5f/3f/9a/5f3f9ae5a2e25b8fc9646c3292d0e5b8.jpg")
asosthree.photos.attach(io: file, filename: "dress7.jpg", content_type: "image/jpg")
asosthree.save

twinset = Listing.create!(category: "Women", title: "Beautiful Wrap Dress" ,description: "Wrap Dress from Revolve, worn once", size: "38",price: "80",location: "Paris" ,brand: "Asos", user: gwen )
file = URI.open("https://i.pinimg.com/originals/18/9e/da/189edaf8c56a4fcfd5298180afdd03ff.jpg")
twinset.photos.attach(io: file, filename: "dress8.jpg", content_type: "image/jpg")
twinset.save

puts "All goood, congrats"

# # SEEDS DONE
# # karl = Listing.create!(category: "Men", title: "Black Suit", description: "Very nice black suit", size: "48", price: "500", location: "Amsterdam", brand: "Aidan Max", user: gabriel )
# # file = URI.open("https://www.karl.com/41/41872762UM_14_a.jpg")
# # karl.photos.attach(io: file, filename: "suits6.jpg", content_type: "image/jpg")
# # file = URI.open("https://www.karl.com/41/41872762UM_14_e.jpg")
# # karl.photos.attach(io: file, filename: "suits6.jpg", content_type: "image/jpg")
# # file = URI.open("https://www.karl.com/41/41872762UM_14_d.jpg")
# # karl.photos.attach(io: file, filename: "suits6.jpg", content_type: "image/jpg")
# # file = URI.open("https://www.karl.com/41/41872762UM_14_f.jpg")
# # karl.photos.attach(io: file, filename: "suits6.jpg", content_type: "image/jpg")
# # karl.save
