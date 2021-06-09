puts "Deleting users..."
User.destroy_all

jacome = User.create!(email: "jacome@saavedra.com", password: "123456",username: "jacomes", first_name: "Jácome", last_name: "Saavedra")
aura = User.create!(email: "aura@lopes.com", password: "123456",username: "aural" first_name: "Aura", last_name: "Lopes")
filipe = User.create!(email: "filipe@laferia.com", password: "123456",username: "filipef" first_name: "Filipe", last_name: "La Féria")
joao = User.create!(email: "joao@silva.com", password: "123456",username: "joaos" first_name: "João", last_name: "Silva")

puts "Deleting accommodations..."
Accommodation.destroy_all

hotel_madrid_1 = Accommodation.create!(name: "Pestana", address: "Calle de Alcalá 90, Madrid", price: "200", rating: "4")
hotel_madrid_2 = Accommodation.create!(name: "Hilton", address: "Calle Serrano 30, Madrid", price: "300", rating: "5")
hotel_madrid_3 = Accommodation.create!(name: "Holiday Inn", address: "Calle de Goya 20, Madrid", price: "100", rating: "3")

hotel_london_1 = Accommodation.create!(name: "Avia", address: "Harper Rd 3, London", price: "200", rating: "4")
hotel_london_2 = Accommodation.create!(name: "Easy Hotel", address: "Victoria St, London", price: "300", rating: "5")
hotel_london_3 = Accommodation.create!(name: "Goodbye Hostel", address: "King's Rd, London", price: "100", rating: "3")

hotel_budapest_1 = Accommodation.create!(name: "Hostellia", address: "Szemere u. 26, Budapest", price: "200", rating: "4")
hotel_budapest_2 = Accommodation.create!(name: "Sleep Inn", address: "Dráva u. 15-17, Budapest", price: "300", rating: "5")
hotel_budapest_3 = Accommodation.create!(name: "Orexiam", address: "Vérhalom, Budapest", price: "100", rating: "3")
