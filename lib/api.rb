
class API

    def self.get_hero(name)
        url = "https://www.superheroapi.com/api.php/10213815254774657/search/#{name}"
        response = Net::HTTP.get(URI(url))
        object = JSON.parse(response)
        results = object["results"]
        bio = results[0]["biography"]
        appearance = results[0]["appearance"]
        connections = results[0]["connections"]
        Hero.new(name,bio,appearance,connections)

    end
end



