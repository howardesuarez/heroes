class CLI
    def call
        puts "You have now activated the Heroes database."
        menu
        another_one


    end

    def menu

        puts "Who are you looking for?"
       
        @name = gets.strip.downcase
        new_hero = API.get_hero(@name)
        
        puts "What do you need to know about em? Choose below"
        
        array = ["BIO","LOOKS","CREW"]
        puts array

        choice = gets.chomp.upcase!
        
        if choice == array[0]
            puts new_hero.biography
        elsif choice == array[1]
            puts new_hero.appearance
        elsif choice == array[2]
            puts new_hero.connections
        else
            puts "This isn't in the database."
        end
    end

    def another_one
        puts " Looking for anyone else? Yes or No?"
            if "Yes"
                puts menu
            else 
                puts "Thank you for using Heroes Database"
            exit
        end
    end


        

end