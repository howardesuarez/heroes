
class Heroes::API

    def self.get_hero(name)
        url ="https://superheroapi.com/api/4206379799379271/search/#{name}"
        response = Net::HTTP.get(URI(url))
        object = JSON.parse(response)
        @results = object["results"]

        cli = CLI.new
            if object["response"] == "error"
             puts "This Hero is not in our database, apologies."   
            cli.replay
         else
     end

        bio = @results[0]["biography"]
        appearance = @results[0]["appearance"]
        connections = @results[0]["connections"]
        Hero.new(name,bio,appearance,connections)

    end





end
