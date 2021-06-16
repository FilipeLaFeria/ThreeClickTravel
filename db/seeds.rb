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
hotel_madrid_1 = Accommodation.create!(city_name: "Madrid", country_name: "Spain", name: "Pestana", address: "Calle de Alcalá 90, Madrid", check_in: "2021-06-11", check_out: "2021-06-14", price: "200")
hotel_madrid_2 = Accommodation.create!(city_name: "Madrid", country_name: "Spain", name: "Hilton", address: "Calle Serrano 30, Madrid", check_in: "2021-06-11", check_out: "2021-06-14", price: "300")
hotel_madrid_3 = Accommodation.create!(city_name: "Madrid", country_name: "Spain", name: "Holiday Inn", address: "Calle de Goya 20, Madrid", check_in: "2021-06-11", check_out: "2021-06-14", price: "100")
hotel_madrid_4 = Accommodation.create!(city_name: "Madrid", country_name: "Spain", name: "Holiday Inn caro", address: "Calle de Goya 43, Madrid", check_in: "2021-06-11", check_out: "2021-06-14", price: "400")

hotel_london_1 = Accommodation.create!(city_name: "London", country_name: "UK", name: "Avia", address: "Harper Rd 3, London", check_in: "2021-06-11", check_out: "2021-06-14", price: "200")
hotel_london_2 = Accommodation.create!(city_name: "London", country_name: "UK", name: "Easy Hotel", address: "Victoria St, London", check_in: "2021-06-11", check_out: "2021-06-14", price: "300")
hotel_london_3 = Accommodation.create!(city_name: "London", country_name: "UK", name: "Goodbye Hostel", address: "King's Rd, London", check_in: "2021-06-11", check_out: "2021-06-14", price: "100")
hotel_london_4 = Accommodation.create!(city_name: "London", country_name: "UK", name: "Goodbye Hostel caro", address: "King's Rd, London", check_in: "2021-06-11", check_out: "2021-06-14", price: "400")

hotel_budapest_1 = Accommodation.create!(city_name: "Budapest", country_name: "Hungary", name: "Hostellia", address: "Szemere u. 26, Budapest", check_in: "2021-06-11", check_out: "2021-06-14", price: "200")
hotel_budapest_2 = Accommodation.create!(city_name: "Budapest", country_name: "Hungary", name: "Sleep Inn", address: "Dráva u. 15-17, Budapest", check_in: "2021-06-11", check_out: "2021-06-14", price: "300")
hotel_budapest_3 = Accommodation.create!(city_name: "Budapest", country_name: "Hungary", name: "Orexiam", address: "Vérhalom, Budapest", check_in: "2021-06-11", check_out: "2021-06-14", price: "100")
hotel_budapest_4 = Accommodation.create!(city_name: "Budapest", country_name: "Hungary", name: "Orexiam caro", address: "Vérhalom, Budapest", check_in: "2021-06-11", check_out: "2021-06-14", price: "400")

hotel_amesterdam_1 = Accommodation.create!(city_name: "Amsterdam", country_name: "Netherlands", name: "Wow", address: "Geuzenveld-Slotermeer, amsterdam", check_in: "2021-06-11", check_out: "2021-06-14", price: "200")
hotel_amesterdam_2 = Accommodation.create!(city_name: "Amsterdam", country_name: "Netherlands", name: "Noo", address: "Geuzenveld-Slotermeer, amsterdam", check_in: "2021-06-11", check_out: "2021-06-14", price: "300")
hotel_amesterdam_3 = Accommodation.create!(city_name: "Amsterdam", country_name: "Netherlands", name: "Way", address: "Geuzenveld-Slotermeer, amsterdam", check_in: "2021-06-11", check_out: "2021-06-14", price: "100")
hotel_amesterdam_4 = Accommodation.create!(city_name: "Amsterdam", country_name: "Netherlands", name: "Way caro", address: "Geuzenveld-Slotermeer, amsterdam", check_in: "2021-06-11", check_out: "2021-06-14", price: "400")

hotel_b1 = Accommodation.create!(city_name: "Berlin", country_name: "Germany", name: "H10 Berlin Ku'damm", address: "Joachimsthaler Str. 31-32, 10719 Berlin", check_in: "2021-06-18", check_out: "2021-06-21", price: "480", url: "https://imgcy.trivago.com/c_lfill,d_dummy.jpeg,e_sharpen:60,f_auto,h_450,q_auto,w_450/itemimages/16/22/1622549_v15.jpeg")
hotel_b2 = Accommodation.create!(city_name: "Berlin", country_name: "Germany", name: "Novotel Berlin Mitte", address: "Fischerinsel 12, 10179 Berlin", check_in: "2021-06-18", check_out: "2021-06-21", price: "450", url: "https://www.google.com/travel/hotels/entity/CgsIisDgu4PQoPO8ARAB/lightbox/CAoSLEFGMVFpcE1QbWxYZHZ0VzhHTzJWWHI2S2pOa1hWdTNPcmR5bU9zcWFod0ph?g2lb=2502548%2C4258168%2C4270442%2C4306835%2C4317915%2C4371335%2C4401769%2C4419364%2C4482438%2C4486153%2C4509341%2C4536454%2C4545890%2C4564872%2C4570417%2C4270859%2C4284970%2C4291517&hl=pt-PT&gl=pt&ssta=1&grf=EmQKLAgOEigSJnIkKiIKBwjlDxAHGAQSBwjlDxAHGAUgADAeQMoCSgcI5Q8QBhgQCjQIDBIwEi6yASsSKQonCiUweDQ3YTg0ZTI3YTEwNjk5NDc6MHhiY2U2ODI4MDM3NzgyMDBh&rp=EIrA4LuD0KDzvAEQisDgu4PQoPO8ATgCQABIAcABAg&ictx=1&sa=X&ved=0CAAQ5JsGahcKEwjwzYSF65rxAhUAAAAAHQAAAAAQAw&utm_campaign=sharing&utm_medium=link&utm_source=htls")
hotel_b3 = Accommodation.create!(city_name: "Berlin", country_name: "Germany", name: "Select Hotel Berlin Checkpoint Charlie", address:  "Hedemannstraße 11/12, 10969 Berlin", check_in: "2021-06-18", check_out: "2021-06-21", price: "439", url: "https://media-cdn.tripadvisor.com/media/photo-s/16/de/fb/dc/select-hotel-berlin-checkpoint.jpg")



puts "Landing all flights..."
Flight.destroy_all

flight_madrid_1 = Flight.create!(company: "Easyjet", flight_number: "EJU7611", city_name: "Madrid", country_name: "Spain", start_date: "2021-06-11", end_date: "2021-06-14", departure_start: "10:00", departure_end: "18:00", duration: "1h 20m", price: "20", url: "https://images.unsplash.com/photo-1539037116277-4db20889f2d4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80")
flight_madrid_2 = Flight.create!(company: "TAP", flight_number: "TP1018", city_name: "Madrid", country_name: "Spain", start_date: "2021-06-11", end_date: "2021-06-14", departure_start: "13:15", departure_end:"17:00", duration: "1h 15m", price: "20", url: "https://images.unsplash.com/photo-1539037116277-4db20889f2d4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80")

flight_london_1 = Flight.create!(company: "Easyjet", flight_number: "EJU7611", city_name: "London", country_name: "UK", start_date: "2021-06-11", end_date: "2021-06-14", departure_start: "20:00", departure_end:"16:00", duration: "1h 20m", price: "60", url: "https://images.unsplash.com/photo-1533929736458-ca588d08c8be?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80")
flight_london_2 = Flight.create!(company: "Easyjet", flight_number: "EJU7611", city_name: "London", country_name: "UK", start_date: "2021-06-11", end_date: "2021-06-14", departure_start: "16:20", departure_end:"15:00", duration: "1h 20m", price: "79", url: "https://images.unsplash.com/photo-1533929736458-ca588d08c8be?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80")

flight_budapest_1 = Flight.create!(company: "Ryanair", flight_number: "EJU7611", city_name: "Budapest", country_name: "Hungary", start_date: "2021-06-11", end_date: "2021-06-14", departure_start: "14:15", departure_end: "13:30", duration: "3h 35m", price: "92", url: "https://images.unsplash.com/photo-1551867633-194f125bddfa?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80")
flight_budapest_2 = Flight.create!(company: "Easyjet", flight_number: "EJU7611", city_name: "Budapest", country_name: "Hungary", start_date: "2021-06-11", end_date: "2021-06-14", departure_start: "19:05", departure_end: "19:15", duration: "3h 20m", price: "125", url: "https://images.unsplash.com/photo-1551867633-194f125bddfa?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80")

flight_amsterdam_1 = Flight.create!(company: "Ryanair", flight_number: "EJU7611", city_name: "Amsterdam", country_name: "Netherlands", start_date: "2021-06-11", end_date: "2021-06-14", departure_start: "14:15", departure_end: "16:45", duration: "3h 35m", price: "92", url: "https://images.unsplash.com/photo-1459679749680-18eb1eb37418?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80")
flight_amsterdam_2 = Flight.create!(company: "Easyjet", flight_number: "EJU7611", city_name: "Amsterdam", country_name: "Netherlands", start_date: "2021-06-11", end_date: "2021-06-14", departure_start: "19:05", departure_end: "17:15", duration: "3h 20m", price: "125", url: "https://images.unsplash.com/photo-1459679749680-18eb1eb37418?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80")

flight_b = Flight.create!(company: "TAP", flight_number: "TP538", city_name: "Berlin", country_name: "Germany", start_date: "2021-06-18", end_date: "2021-06-21", departure_start: "08:00", departure_end: "10:50", duration: "3h 25m", price: "131", url: "https://images.unsplash.com/photo-1599722585837-c1cb8eea32ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80")
flight_c = Flight.create!(company: "Ryanair", flight_number: "FR2926", city_name: "Brussels", country_name: "Belgium", start_date: "2021-06-18", end_date: "2021-06-21", departure_start: "08:00", departure_end: "10:50", duration: "3h 25m", price: "131", url: "https://unsplash.com/photos/iPOZf3tQfHA")
flight_d = Flight.create!(company: "TAP", flight_number: "TP1246", city_name: "Prague", country_name: "Czech Republic", start_date: "24/06/2021", end_date: "27/06/2021", departure_start: "14:20", departure_end: "19:20", duration: "3h 30m", price: "255", url: "https://unsplash.com/photos/aDxmYZtYj7g")
flight_e = Flight.create!(company: "TAP", flight_number: "TP754", city_name: "Copenhagen", country_name: "Denmark", start_date: "18/06/2021", end_date: "21/06/2021", departure_start: "07:30", departure_end: "12:05", duration: "3h 35m", price: "290", url: "https://unsplash.com/photos/-hwDGRQzAeM")
flight_f = Flight.create!(company: "EasyJet", flight_number: "EZY1442", city_name: "Geneve", country_name: "Switzerland", start_date: "25/06/2021", end_date: "30/06/2021", departure_start: "07:00", departure_end: "16:45", duration: "2h 30m", price: "76", url: "https://unsplash.com/photos/-XNikzQiFZI")
flight_g = Flight.create!(company: "TAP", flight_number: "TP544", city_name: "Belgrade", country_name:  "Serbia", start_date: "24/06/2021", end_date: "27/06/2021", departure_start: "10:00", departure_end: "15:00", duration: "3h 35m", price: "250", url: "https://unsplash.com/photos/xHnomVS0SiU")
flight_h = Flight.create!(company: "Ryanair", flight_number: "FR2932", city_name: "Helsinki", country_name:  "Finland", start_date: "25/06/2021", end_date: "30/06/2021", departure_start: "07:25", departure_end: "21:10", duration: "03:35", price: "380", url: "https://unsplash.com/photos/vPQP7QyQfWg")
flight_i = Flight.create!(company: "TAP", flight_number: "TP775", city_name: "Oslo", country_name: "Norway", start_date: "18/06/2021", end_date: "21/06/2021", departure_start: "08:30", departure_end:  "16:15", duration: "03:40", price: "350", url:  "https://unsplash.com/photos/aS3ftVZLrVI")
flight_j = Flight.create!(company: "EasyJet", flight_number: "EZY1480", city_name: "Vienna", country_name: "Austria", start_date: "25/06/2021", end_date: "30/06/2021", departure_start: "10:00",departure_end: "18:00",duration: "02:10", price: "110", url: "https://unsplash.com/photos/Th2MisvdKr0")
flight_k = Flight.create!(company: "Ryanair", flight_number: "FR29432", city_name: "London", country_name: "UK", start_date: "01/07/2021", end_date: "04/07/2021", departure_start: "09:30",departure_end: "19:00", duration: "02:40", price: "99", url: "https://unsplash.com/photos/EXdXLrZXS9Q")
flight_l = Flight.create!(company: "EasyJet", flight_number: "EZY1442", city_name: "Paris", country_name: "France", start_date: "02/07/2021", end_date: "05/07/2021", departure_start: "07:00",departure_end: "16:45", duration: "2h 30m", price: "80", url: "https://unsplash.com/photos/wTSXKJBtznA")
flight_m = Flight.create!(company: "TAP", flight_number: "TP535", city_name: "Rome", country_name: "Italy", start_date: "01/06/2021", end_date: "04/06/2021", departure_start: "11:00", departure_end: "18:45", duration: "2h 45m", price: "120", url: "https://unsplash.com/photos/7ybKmhDTcz0")
flight_n = Flight.create!(company: "TAP", flight_number: "TP208", city_name: "Dublin", country_name: "Ireland", start_date: "25/06/2021", end_date: "30/06/2021", departure_start: "08:30", departure_end: "16:15", duration: "02:40", price:  "305", url: "https://unsplash.com/photos/tnzzr8HpLhs")
flight_o = Flight.create!(company: "EasyJet", flight_number: "EZY1480", city_name: "Madrid", country_name: "Spain", start_date: "18/06/2021", end_date: "21/06/2021", departure_start: "10:00", departure_end: "18:00", duration: "01:15", price: "28", url: "https://unsplash.com/photos/WBGjg0DsO_g")
flight_p = Flight.create!(company: "TAP", flight_number: "TP999", city_name: "Amsterdam", country_name: "Netherlands", start_date: "18/06/2021", end_date: "21/06/2021", departure_start: "11:00", departure_end: "18:45", duration: "2h 55m", price: "200", url: "https://unsplash.com/photos/t2hgHV1R7_g")

puts "Done!"
