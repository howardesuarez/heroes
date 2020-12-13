require_relative '../confi/environment.rb'

class Heroes::API

    def self.get_hero(name)
        @url ="https://superheroapi.com/api/4206379799379271/search/#{name}"
        uri = URI.parse(@url)
        response = Net::HTTP.get(uri)
end
