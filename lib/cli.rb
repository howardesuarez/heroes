class Heroes::CLI
    def call
        puts "You have now activated the Heroes database."
        menu

    end

    def menu

        puts "Who are you looking for?"
       
        @name = get.strip.downcase
        new_hero = API.get_hero(@name)
        
        puts "What do you need to know about em? Choose below"
        
        array = ["BIO","LOOKS","CREW"]

    end

end