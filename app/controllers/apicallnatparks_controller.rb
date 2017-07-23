class ApicallnatparksController < ApplicationController
  require 'json'
  require 'uri'
  require 'net/http'

def apicall
  url = URI("https://developer.nps.gov/api/v0/parks?limit=519")

  http = Net::HTTP.new(url.host, url.port)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_NONE

  request = Net::HTTP::Get.new(url)
  request["authorization"] = '196E647D-37EF-4CBC-A201-BAECEEBE9319'
  request["cache-control"] = 'no-cache'
  request["postman-token"] = '33cb9a05-1fe6-9b05-e371-777b601a5b14'

  response = http.request(request)

  # JSON.parse(response.read_body)
  JSON.parse(response.body)
end

def index

  @parkscall = apicall()
#   @parkscall["data"].each do |k,v|
#       @newpark = NatParks.new(k = k["designation"], k=k["fullName"],k=k["description"],k = k["states"] )
# end
# @newpark
end

end
