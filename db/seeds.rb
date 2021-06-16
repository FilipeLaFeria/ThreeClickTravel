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

hotel_c1 = Accommodation.create!(city_name: "Brussels", country_name: "Belgium", name: "ibis Brussels off Grand Place", address: "Rue du Marché Aux Herbes 100, 1000 Bruxelles", check_in: "2021-06-25", check_out: "2021-06-30", price: "520", url: "https://images.unsplash.com/photo-1548092304-e0205cb0031b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1502&q=80")
hotel_c2 = Accommodation.create!(city_name: "Brussels", country_name: "Belgium", name: "Hotel Le Quinze Grand Place", address: "Grand Place 15, 1000 Bruxelles", check_in: "2021-06-25", check_out: "2021-06-30", price: "510", url: "https://images.unsplash.com/photo-1461838239441-4475121c0b7d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80")
hotel_c3 = Accommodation.create!(city_name: "Brussels", country_name: "Belgium",name: "Hotel Saint Nicolas", address: "Rue du Marché aux Poulets 32, 1000 Bruxelles", check_in: "2021-06-25", check_out: "2021-06-30", price: "490", url: "https://images.unsplash.com/photo-1570117660310-53c750775b33?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80")

hotel_d1 = Accommodation.create!(city_name: "Prague", country_name: "Czech Republic", name: "NH Collection Prague Carlo IV", address: "Senovážné náměstí 13/991 11000, Prague", check_in: "2021-06-24", check_out: "2021-06-27", price: "310", url: "https://images.unsplash.com/photo-1549041490-f64d74264d25?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80")
hotel_d2 = Accommodation.create!(city_name: "Prague", country_name: "Czech Republic", name: "Hotel Pod Vezi", address: "Mostecka 58/2, Prague, 118 00", check_in: "2021-06-24", check_out: "2021-06-27", price: "250", url: "https://images.unsplash.com/photo-1543053845-3eef00d3319f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1948&q=80")
hotel_d3 = Accommodation.create!(city_name: "Prague", country_name: "Czech Republic", name: "Grandior Hotel Prague", address:  "Na Poříčí 42, Praga, 11000", check_in: "2021-06-24", check_out: "2021-06-27", price: "280", url: "https://images.unsplash.com/photo-1553713822-6b472e98ef99?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1334&q=80")

hotel_e1 = Accommodation.create!(city_name: "Copenhagen", country_name: "Denmark", name: "City Hotel Nebo", address: "Istedgade 6, 1650 København", check_in: "2021-06-18", check_out: "2021-06-21", price: "409", url: "https://images.unsplash.com/photo-1527455425643-782083b04d19?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80")
hotel_e2 = Accommodation.create!(city_name: "Copenhagen", country_name: "Denmark", name: "Best Western Plus Airport Hotel", address: "Kastruplundgade 15, 2770 Kastrup", check_in: "2021-06-18", check_out: "2021-06-21", price: "380", url: "https://images.unsplash.com/photo-1612178581595-188522a58817?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=802&q=80")
hotel_e3 = Accommodation.create!(city_name: "Copenhagen", country_name: "Denmark", name: "CABINN City Hotel", address: "Mitchellsgade 14, 1568 København", check_in: "2021-06-18", check_out: "2021-06-21", price: "370", url: "https://images.unsplash.com/photo-1520430825812-775990ecfb13?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80")

hotel_f1 = Accommodation.create!(city_name: "Geneve", country_name: "Switzerland", name: "Nash Pratik Hotel", address: "Chemin de la Violette 13, 1216 Cointrin", check_in: "2021-06-25", check_out: "2021-06-30", price: "450", url: "https://images.unsplash.com/photo-1509961923790-362d4f965974?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80")
hotel_f2 = Accommodation.create!(city_name: "Geneve", country_name: "Switzerland", name: "Hotel Eden Genève", address: "Rue de Lausanne 135, 1202 Genève", check_in: "2021-06-25", check_out: "2021-06-30", price: "380", url: "https://images.unsplash.com/photo-1593180538519-e8823b3a9ff0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80")
hotel_f3 = Accommodation.create!(city_name: "Geneve", country_name: "Switzerland", name: "Hotel Diplomate", address: "Rue de la Terrassière 46, 1207 Genève", check_in: "2021-06-25", check_out: "2021-06-30", price: "410", url: "https://images.unsplash.com/photo-1567563345021-5f515f006043?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80")

hotel_g1 = Accommodation.create!(city_name: "Belgrade", country_name: "Serbia", name: "Maison Royale", address: "Kneza Mihaila 52, Old town, 11000 Belgrade", check_in: "2021-06-24", check_out: "2021-06-27", price: "340", url: "https://cdn.ostrovok.ru/t/640x400/content/77/e0/77e062d2aca3db7a4341dabc9c60c1efa8fe9b32.jpeg")
hotel_g2 = Accommodation.create!(city_name: "Belgrade", country_name: "Serbia", name: "Mercure Belgrade Excelsior", address: "Kneza Miloša 5, Beograd 11000", check_in: "2021-06-24", check_out: "2021-06-27", price: "250", url: "https://content.r9cdn.net/rimg/himg/da/ee/c5/ice-93987-67433568_3XL-155307.jpg?width=660&height=400&xhint=1440&yhint=1123&crop=true&outputtype=webp")
hotel_g3 = Accommodation.create!(city_name: "Belgrade", country_name: "Serbia", name: "Belgrade Art Hotel", address: "Kneza Mihaila 27, Beograd 11000", check_in: "2021-06-24", check_out:  "2021-06-27", price: "220", url: "https://www.tob.rs/images/tekstovi/belgrade-art-hotel-1219764930.jpg")

hotel_h1 = Accommodation.create!(city_name: "Helsinki", country_name: "Finland", name: "Hotel Midpoint Helsinki", address: "Kaisaniemenkatu 3, 00100 Helsinki", check_in: "2021-06-25", check_out: "2021-06-30", price: "288", url: "https://foto-origin.hrsstatic.com/foto/4/0/3/2//teaser_403280.jpg")
hotel_h2 = Accommodation.create!(city_name: "Helsinki", country_name: "Finland", name: "Hotel Helka", address: "Pohjoinen Rautatiekatu 23, 00100 Helsinki", check_in: "2021-06-25", check_out: "2021-06-30", price: "543", url: "https://foto.hrsstatic.com/fotos/0/3/545/350/80/000000/http%3A%2F%2Ffoto-origin.hrsstatic.com%2Ffoto%2F0%2F0%2F8%2F7%2F008762%2F008762_ha_24877144.jpg/a2inCJvmTwzh0M%2BgVooLdg%3D%3D/2048,1536/6/Helka-Helsinki-Hotel_outdoor_area-8762.jpg")
hotel_h3 = Accommodation.create!(city_name: "Helsinki", country_name: "Finland", name: "Hilton Helsinki Strand", address: "John Stenbergin ranta 4, 00530 Helsinki", check_in: "2021-06-25", check_out: "2021-06-30", price: "555", url: "https://www.hilton.com/im/en/HELHIHI/381132/helhihi-helhihi-exterior.tif?impolicy=crop&cw=4288&ch=2286&gravity=NorthWest&xposition=0&yposition=163&rw=768&rh=410")

hotel_i1 = Accommodation.create!(city_name: "Oslo", country_name: "Norway", name: "Thon Hotel Astoria", address: "Dronningens Gate 21, 0154 Oslo", check_in: "2021-06-18", check_out: "2021-06-21", price: "400", url: "https://ak-d.tripcdn.com/images/200a0h0000008v3xqA4FD_R_550_412_R5_Q70_D.jpg")
hotel_i2 = Accommodation.create!(city_name: "Oslo", country_name: "Norway", name: "First Hotel Millennium", address: "Kristian IVs gate 2, 0159 Oslo",  check_in: "2021-06-18", check_out: "2021-06-21", price: "370", url: "https://firsthotelsiv.azureedge.net/publishedmedia/8tzoxzdtv4tld6520krz/exterior-first-hotel-millennium-oslo-AJH_5455.jpg")
hotel_i3 = Accommodation.create!(city_name: "Oslo", country_name: "Norway", name: "Thon Hotel Storo", address: "Tollbugata 25, 0157 Oslo", check_in: "2021-06-18", check_out: "2021-06-21", price: "440", url: "https://firsthotelsiv.azureedge.net/publishedmedia/8tzoxzdtv4tld6520krz/exterior-first-hotel-millennium-oslo-AJH_5455.jpg")

hotel_j1 = Accommodation.create!(city_name: "Vienna", country_name: "Austria", name: "Greenstay Hotel & Suites", address: "Rennweg 12, 1030 Wien", check_in: "2021-06-25", check_out: "2021-06-30", price: "329", url: "https://unsplash.com/photos/t0sXKOz9qtk")
hotel_j2 = Accommodation.create!(city_name: "Vienna", country_name: "Austria", name: "Mercure Wien City", address: "Hollandstraße 3, 1020 Wien", check_in: "2021-06-25", check_out: "2021-06-30", price: "367", url: "https://unsplash.com/photos/6csN-sP98Ww")
hotel_j3 = Accommodation.create!(city_name: "Vienna", country_name: "Austria", name: "MEININGER Hotel Wien Downtown Sissi", address: "chiffamtsgasse 15, 1020 Wien", check_in: "2021-06-25", check_out: "2021-06-30", price: "320", url: "https://unsplash.com/photos/iwWJFIlnDm4")

hotel_k1 = Accommodation.create!(city_name: "London", country_name: "UK", name: "The Queen's Gate Hotel", address:  "31-34 Queen's Gate, South Kensington, London SW7 5JA", check_in: "2021-07-01", check_out: "2021-07-04", price: "280", url: "https://unsplash.com/photos/t0sXKOz9qtk")
hotel_k2 = Accommodation.create!(city_name: "London", country_name: "UK", name: "Shoreditch Inn", address: "1 Austin St, London E2 7NB", check_in: "2021-07-01", check_out: "2021-07-04", price: "250", url: "https://unsplash.com/photos/MI2-rw5cMp4")
hotel_k3 = Accommodation.create!(city_name: "London", country_name: "UK", name: "DoubleTree by Hilton London Kensington", address: "100 Cromwell Rd, South Kensington, London SW7 4ER", check_in: "2021-07-01", check_out: "2021-07-04", price: "270", url: "https://unsplash.com/photos/szCvt1gP2d4")

hotel_l1 = Accommodation.create!(city_name: "Paris", country_name: "France", name: "ibis Styles Paris Alésia Montparnasse", address: "32 Rue des Plantes, 75014 Paris", check_in: "2021-07-02", check_out: "2021-07-05", price: "290", url: "https://images.unsplash.com/photo-1541628951107-a9af5346a3e4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=672&q=80")
hotel_l2 = Accommodation.create!(city_name: "Paris", country_name: "France", name: "Hôtel du Triangle d'Or", address: "6 Rue Godot de Mauroy, 75009 Paris", check_in: "2021-07-02", check_out: "2021-07-05", price: "310", url: "https://images.unsplash.com/photo-1499856871958-5b9627545d1a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2807&q=80")
hotel_l3 = Accommodation.create!(city_name: "Paris", country_name: "France", name: "Hôtel Terminus Montparnasse", address: "Rue Godot de Mauroy, 75009 Paris", check_in: "2021-07-02", check_out: "2021-07-05", price: "300", url: "https://images.unsplash.com/photo-1590893322091-473316efeb78?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80")

hotel_m1 = Accommodation.create!(city_name: "Rome", country_name: "Italy", name: "Hotel Artemide", address: "Via Nazionale, 22, 00184 Roma", check_in: "2021-07-01", check_out: "2021-07-04", price: "420", url: "https://unsplash.com/photos/XEc0VwVkBy4")
hotel_m2 = Accommodation.create!(city_name: "Rome", country_name: "Italy", name: "Hotel Nazionale", address: "Piazza di Monte Citorio, 131, 00186 Roma", check_in: "2021-07-01", check_out: "2021-07-04", price: "430", url: "https://unsplash.com/photos/7ybKmhDTcz0")
hotel_m3 = Accommodation.create!(city_name: "Rome", country_name: "Italy",name: "Hotel Mozart", address:  "Via dei Greci, 23, 00187 Roma", check_in: "2021-07-01", check_out:  "2021-07-04", price: "390", url: "https://unsplash.com/photos/7ybKmhDTcz0")

hotel_n1 = Accommodation.create!(city_name: "Dublin", country_name: "Ireland", name: "Carlton Hotel Dublin Airport Hotel", address: "Old Airport Rd, Cloghran, Dublin, K67 P5C7", check_in: "2021-06-25", check_out: "2021-06-30", price: "199", url: "https://unsplash.com/photos/ZFYg5jTvB4A")
hotel_n1 = Accommodation.create!(city_name: "Dublin", country_name: "Ireland", name: "Clayton Hotel Burlington Road", address: "Leeson Street Upper, Dublin", check_in: "2021-06-25", check_out: "2021-06-30", price: "220", url: "https://unsplash.com/photos/KT4dOfvtZSg")
hotel_n2 = Accommodation.create!(city_name: "Dublin", country_name: "Ireland", name: "Glashaus Hotel", address: "Belgard Square W, Tallaght, Dublin 24", check_in: "2021-06-25", check_out: "2021-06-30", price: "250", url: "https://unsplash.com/photos/RzmUfMK1RHU")

hotel_o1 = Accommodation.create!(city_name: "Madrid", country_name: "Spain", name: "H10 Villa de la Reina Boutique Hotel", address: "C/ Gran Vía, 22, 28013 Madrid", check_in: "2021-06-18", check_out: "2021-06-21", price: "220", url: "https://unsplash.com/photos/ChSZETOal-I")
hotel_o2 = Accommodation.create!(city_name: "Madrid", country_name: "Spain", name: "Aloft Madrid Gran Via", address: "Calle de Jacometrezo, 4, 28013 Madrid", check_in: "2021-06-18", check_out:  "2021-06-21", price: "230", url: "https://unsplash.com/photos/NqWXIV2DDoY")
hotel_o3 = Accommodation.create!(city_name: "Madrid", country_name: "Spain", name: "Hotel Mora by MIJ", address: "Paseo del Prado, 32, 1, 28014 Madrid", check_in: "2021-06-18", check_out:  "2021-06-21", price: "240", url: "https://unsplash.com/photos/0MNJG2-fOYM")

hotel_p1 = Accommodation.create!(city_name: "Amsterdam", country_name: "Netherlands", name: "citizenM Schiphol Airport Hotel", address: "Jan Plezierweg 2, 1118 BB Schiphol", check_in: "2021-06-18", check_out:  "2021-06-21", price: "298", url: "https://unsplash.com/photos/_SD9XBRFig8")
hotel_p2 = Accommodation.create!(city_name: "Amsterdam", country_name: "Netherlands", name: "NH Amsterdam Noord", address: "Distelkade 21, 1031 XP Amsterdam", check_in: "2021-06-18", check_out: "2021-06-21", price: "288", url: "https://unsplash.com/photos/_SD9XBRFig8")
hotel_p3 = Accommodation.create!(city_name: "Amsterdam", country_name: "Netherlands", name: "Hotel Cornelisz", address: "Pieter Cornelisz Hooftstraat 24, 1071 BX Amsterdam", check_in: "2021-06-18", check_out: "2021-06-21", url:  "https://unsplash.com/photos/lqHCzmFCIvo")

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
