puts "Deleting definitions..."
Definition.destroy_all
puts "Deleting destinations..."
Destination.destroy_all
puts "Deleting users..."
User.destroy_all

jacome = User.create!(email: "jacome@saavedra.com", password: "123456", username: "jacomes", first_name: "Jácome", last_name: "Saavedra")
aura = User.create!(email: "aura@lopes.com", password: "123456", username: "aural", first_name: "Aura", last_name: "Lopes")
filipe = User.create!(email: "filipe@laferia.com", password: "123456", username: "filipel", first_name: "Filipe", last_name: "La Féria")
joao = User.create!(email: "joao@silva.com", password: "123456", username: "joaos", first_name: "João", last_name: "Silva")

puts "Deleting accommodations..."
Accommodation.destroy_all

puts "Creating accommodations..."
hotel_madrid_1 = Accommodation.create!(city_name: "Madrid", country_name: "Spain", name: "Pestana", address: "Calle de Alcalá 90, Madrid", check_in: "2021-06-11", check_out: "2021-06-14", price: "200", rating: "4")
hotel_madrid_2 = Accommodation.create!(city_name: "Madrid", country_name: "Spain", name: "Hilton", address: "Calle Serrano 30, Madrid", check_in: "2021-06-11", check_out: "2021-06-14", price: "300", rating: "5")
hotel_madrid_3 = Accommodation.create!(city_name: "Madrid", country_name: "Spain", name: "Holiday Inn", address: "Calle de Goya 20, Madrid", check_in: "2021-06-11", check_out: "2021-06-14", price: "100", rating: "3")
hotel_madrid_4 = Accommodation.create!(city_name: "Madrid", country_name: "Spain", name: "Holiday Inn caro", address: "Calle de Goya 43, Madrid", check_in: "2021-06-11", check_out: "2021-06-14", price: "400", rating: "3")

hotel_london_1 = Accommodation.create!(city_name: "London", country_name: "UK", name: "Avia", address: "Harper Rd 3, London", check_in: "2021-06-11", check_out: "2021-06-14", price: "200", rating: "4")
hotel_london_2 = Accommodation.create!(city_name: "London", country_name: "UK", name: "Easy Hotel", address: "Victoria St, London", check_in: "2021-06-11", check_out: "2021-06-14", price: "300", rating: "5")
hotel_london_3 = Accommodation.create!(city_name: "London", country_name: "UK", name: "Goodbye Hostel", address: "King's Rd, London", check_in: "2021-06-11", check_out: "2021-06-14", price: "100", rating: "3")
hotel_london_4 = Accommodation.create!(city_name: "London", country_name: "UK", name: "Goodbye Hostel caro", address: "King's Rd, London", check_in: "2021-06-11", check_out: "2021-06-14", price: "400", rating: "3")

hotel_budapest_1 = Accommodation.create!(city_name: "Budapest", country_name: "Hungary", name: "Hostellia", address: "Szemere u. 26, Budapest", check_in: "2021-06-11", check_out: "2021-06-14", price: "200", rating: "4")
hotel_budapest_2 = Accommodation.create!(city_name: "Budapest", country_name: "Hungary", name: "Sleep Inn", address: "Dráva u. 15-17, Budapest", check_in: "2021-06-11", check_out: "2021-06-14", price: "300", rating: "5")
hotel_budapest_3 = Accommodation.create!(city_name: "Budapest", country_name: "Hungary", name: "Orexiam", address: "Vérhalom, Budapest", check_in: "2021-06-11", check_out: "2021-06-14", price: "100", rating: "3")
hotel_budapest_4 = Accommodation.create!(city_name: "Budapest", country_name: "Hungary", name: "Orexiam caro", address: "Vérhalom, Budapest", check_in: "2021-06-11", check_out: "2021-06-14", price: "400", rating: "3")

hotel_amesterdam_1 = Accommodation.create!(city_name: "Amsterdam", country_name: "Netherlands", name: "Wow", address: "Geuzenveld-Slotermeer, amsterdam", check_in: "2021-06-11", check_out: "2021-06-14", price: "200", rating: "4")
hotel_amesterdam_2 = Accommodation.create!(city_name: "Amsterdam", country_name: "Netherlands", name: "Noo", address: "Geuzenveld-Slotermeer, amsterdam", check_in: "2021-06-11", check_out: "2021-06-14", price: "300", rating: "5")
hotel_amesterdam_3 = Accommodation.create!(city_name: "Amsterdam", country_name: "Netherlands", name: "Way", address: "Geuzenveld-Slotermeer, amsterdam", check_in: "2021-06-11", check_out: "2021-06-14", price: "100", rating: "3")
hotel_amesterdam_4 = Accommodation.create!(city_name: "Amsterdam", country_name: "Netherlands", name: "Way caro", address: "Geuzenveld-Slotermeer, amsterdam", check_in: "2021-06-11", check_out: "2021-06-14", price: "400", rating: "3")

puts "Landing all flights..."
Flight.destroy_all

flight_madrid_1 = Flight.create!(company: "Easyjet", flight_number: "EJU7611", city_name: "Madrid", country_name: "Spain", start_date: "2021-06-11", end_date: "2021-06-14", departure_start: "10:00", duration: "1h 20m", price: "20", url: "https://images.unsplash.com/photo-1539037116277-4db20889f2d4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80")
flight_madrid_2 = Flight.create!(company: "TAP", flight_number: "TP1018", city_name: "Madrid", country_name: "Spain", start_date: "2021-06-11", end_date: "2021-06-14", departure_start: "13:15", duration: "1h 15m", price: "20", url: "https://images.unsplash.com/photo-1539037116277-4db20889f2d4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80")

flight_london_1 = Flight.create!(company: "Easyjet", flight_number: "EJU7611", city_name: "London", country_name: "UK", start_date: "2021-06-11", end_date: "2021-06-14", departure_start: "20:00", duration: "1h 20m", price: "60", url: "https://images.unsplash.com/photo-1533929736458-ca588d08c8be?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80")
flight_london_2 = Flight.create!(company: "Easyjet", flight_number: "EJU7611", city_name: "London", country_name: "UK", start_date: "2021-06-11", end_date: "2021-06-14", departure_start: "16:20", duration: "1h 20m", price: "79", url: "https://images.unsplash.com/photo-1533929736458-ca588d08c8be?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80")

flight_budapest_1 = Flight.create!(company: "Ryanair", flight_number: "EJU7611", city_name: "Budapest", country_name: "Hungary", start_date: "2021-06-11", end_date: "2021-06-14", departure_start: "14:15", duration: "3h 35m", price: "92", url: "https://images.unsplash.com/photo-1551867633-194f125bddfa?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80")
flight_budapest_2 = Flight.create!(company: "Easyjet", flight_number: "EJU7611", city_name: "Budapest", country_name: "Hungary", start_date: "2021-06-11", end_date: "2021-06-14", departure_start: "19:05", duration: "3h 20m", price: "125", url: "https://images.unsplash.com/photo-1551867633-194f125bddfa?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80")

flight_amsterdam_1 = Flight.create!(company: "Ryanair", flight_number: "EJU7611", city_name: "Amsterdam", country_name: "Netherlands", start_date: "2021-06-11", end_date: "2021-06-14", departure_start: "14:15", duration: "3h 35m", price: "92", url: "https://images.unsplash.com/photo-1459679749680-18eb1eb37418?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80")
flight_amsterdam_2 = Flight.create!(company: "Easyjet", flight_number: "EJU7611", city_name: "Amsterdam", country_name: "Netherlands", start_date: "2021-06-11", end_date: "2021-06-14", departure_start: "19:05", duration: "3h 20m", price: "125", url: "https://images.unsplash.com/photo-1459679749680-18eb1eb37418?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80")


puts "Done!"
