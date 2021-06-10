puts "Deleting users..."
User.destroy_all

jacome = User.create!(email: "jacome@saavedra.com", password: "123456", username: "jacomes", first_name: "Jácome", last_name: "Saavedra")
aura = User.create!(email: "aura@lopes.com", password: "123456", username: "aural", first_name: "Aura", last_name: "Lopes")
filipe = User.create!(email: "filipe@laferia.com", password: "123456", username: "filipel", first_name: "Filipe", last_name: "La Féria")
joao = User.create!(email: "joao@silva.com", password: "123456", username: "joaos", first_name: "João", last_name: "Silva")

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


puts "Landing all flights..."
Flight.destroy_all

flight_madrid_1 = Flight.create!(company: "Easyjet", flight_number: "EJU7611", destination: "Madrid, Spain", start_date: "2021-06-11", departure: "10:00", duration: "1h 20m", price: "20")
flight_madrid_2 = Flight.create!(company: "TAP", flight_number: "TP1018", destination: "Madrid, Spain", start_date: "2021-06-11", departure: "13:15", duration: "1h 15m", price: "20")

flight_london_1 = Flight.create!(company: "Easyjet", flight_number: "EJU7611", destination: "London, UK", start_date: "2021-06-11", departure: "20:00", duration: "1h 20m", price: "60")
flight_london_2 = Flight.create!(company: "Easyjet", flight_number: "EJU7611", destination: "London, UK", start_date: "2021-06-11", departure: "16:20", duration: "1h 20m", price: "79")

flight_budapest_1 = Flight.create!(company: "Ryanair", flight_number: "EJU7611", destination: "Budapest, Hungary", start_date: "2021-06-11", departure: "14:15", duration: "3h 35m", price: "92")
flight_budapest_2 = Flight.create!(company: "Easyjet", flight_number: "EJU7611", destination: "Budapest, Hungary", start_date: "2021-06-11", departure: "19:05", duration: "3h 20m", price: "125")

puts "Done!"
