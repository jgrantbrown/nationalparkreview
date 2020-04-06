class ApicallnatparksController < ApplicationController
  require 'json'
  require 'uri'
  require 'net/http'
  require 'cgi'

# move request data to on var and private
def apicall

  # url = "https://developer.nps.gov/api/v1/parks?limit=498&api_key="
  api_key = ENV["API_KEY"]
  # fullURL = URI(url + api_key)
  urlstart ="https://developer.nps.gov/api/v1/parks?limit=50&start="
  urlkey = "&api_key="
  n = 1
  urlarray = []
  datadump=[]
  while n < 500
    numb = n.to_s
    fullUrltest = URI(urlstart + numb + urlkey + api_key)
    urlarray.push(fullUrltest)
    n += 50
  end

  urlarray.each do |urldata|
    http = Net::HTTP.new(urldata.host, urldata.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(urldata)
    request["authorization"] = '196E647D-37EF-4CBC-A201-BAECEEBE9319'
    request["cache-control"] = 'no-cache'
    request["postman-token"] = '33cb9a05-1fe6-9b05-e371-777b601a5b14'

    response = http.request(request)

    # JSON.parse(response.read_body)
    a = JSON.parse(response.body)

    a["data"].each do |listing|
    datadump.push(listing)
    end

  end
  return datadump

  # http = Net::HTTP.new(fullUrltest.host, fullUrltest.port)
  # http.use_ssl = true
  # http.verify_mode = OpenSSL::SSL::VERIFY_NONE
  #
  # request = Net::HTTP::Get.new(fullUrltest)
  # request["authorization"] = '196E647D-37EF-4CBC-A201-BAECEEBE9319'
  # request["cache-control"] = 'no-cache'
  # request["postman-token"] = '33cb9a05-1fe6-9b05-e371-777b601a5b14'
  #
  # response = http.request(request)
  #
  # JSON.parse(response.read_body)
  # JSON.parse(response.body)

end


# BETA testing data using to show what info is being pulled
# how do I only load once and not creat duplicates?
# trying to build method to add persitence of park data
  def index

    @natparks=Natpark.all

    @parkscall = apicall()

    @parkscall.each do |park|

      park["nps_id"] = park.delete "id"
    
      @newpark = Natpark.create(park)
    end
  end






end
