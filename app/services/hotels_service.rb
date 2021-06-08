require 'uri'
require 'net/http'
require 'openssl'
require 'open-uri'
require 'nokogiri'
require 'byebug'
require 'json'

class HotelsService

  def self.call_location(location)
      url = URI("https://hotels4.p.rapidapi.com/locations/search?query=#{location}&locale=en_US")
      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      request = Net::HTTP::Get.new(url)
      request["x-rapidapi-key"] = '15f720f90amsh81cae3f9fda379fp1e549djsncfff581f8508'
      request["x-rapidapi-host"] = 'hotels4.p.rapidapi.com'
      response = http.request(request)
      #puts response.read_body
      # ENV['RAPID_API_KEY']
      result = JSON.parse(response.read_body)
      destination_id = result['suggestions'][0]['entities'][0]['destinationId']
      p destination_id
      return destination_id
  end


  def call_properties(location,adults,start_date,end_date)
    id = HotelsService.call_location(location)
    url = URI("https://hotels4.p.rapidapi.com/properties/list?adults1=#{adults}&pageNumber=1&destinationId=#{id}&pageSize=25&checkOut=#{end_date}&checkIn=#{start_date}&sortOrder=PRICE&locale=en_US&currency=USD")
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    request["x-rapidapi-key"] = '15f720f90amsh81cae3f9fda379fp1e549djsncfff581f8508'
    request["x-rapidapi-host"] = 'hotels4.p.rapidapi.com'

    response = http.request(request)
    result = JSON.parse(response.read_body)
    #### code to get the hotels

  end
end


HotelsService.call_location("Porto")




