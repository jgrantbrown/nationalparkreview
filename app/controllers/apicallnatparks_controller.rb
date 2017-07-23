class ApicallnatparksController < ApplicationController

  require 'uri'
  require 'net/http'
def index
  url = URI("https://developer.nps.gov/api/v0/parks?limit=519")

  http = Net::HTTP.new(url.host, url.port)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_NONE

  request = Net::HTTP::Get.new(url)
  request["authorization"] = '196E647D-37EF-4CBC-A201-BAECEEBE9319'
  request["cache-control"] = 'no-cache'
  request["postman-token"] = '33cb9a05-1fe6-9b05-e371-777b601a5b14'

  response = http.request(request)

  @response = response.read_body
end

end
