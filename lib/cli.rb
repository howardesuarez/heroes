class CLI
    def call
        puts ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
        :::::::::::::::::::::::::::::::::::::::::::::-'    `-::::::::::::::::::
        ::::::::::::::::::::::::::::::::::::::::::-'          `::::::::::::::::
        :::::::::::::::::::::::::::::::::::::::-  '   /(_M_)\  `:::::::::::::::
        :::::::::::::::::::::::::::::::::::-'        |       |  :::::::::::::::
        ::::::::::::::::::::::::::::::::-         .   \/~V~\/  ,:::::::::::::::
        ::::::::::::::::::::::::::::-'             .          ,::::::::::::::::
        :::::::::::::::::::::::::-'                 `-.    .-::::::::::::::::::
        :::::::::::::::::::::-'                  _,,-::::::::::::::::::::::::::
        ::::::::::::::::::-'                _,--:::::::::::::::::::::::::::::::
        ::::::::::::::-'               _.--::::::::::::::::::::::#####:::::::::
        :::::::::::-'             _.--:::::::::::::::::::::::::::#####:::::####
        ::::::::'    ##     ###.-::::::###:::::::::::::::::::::::#####:::::####
        ::::-'       ###_.::######:::::###::::::::::::::#####:##########:::####
        :'         .:###::########:::::###::::::::::::::#####:##########:::####
             ...--:::###::########:::::###:::::######:::#####:##########:::####
         _.--:::##:::###:#########:::::###:::::######:::#####:#################
        '#########:::###:#########::#########::######:::#####:#################
        :#########:::#############::#########::######:::#######################
        ##########:::########################::################################
        ##########:::##########################################################
        ##########:::##########################################################
        #######################################################################
        #######################################################################
        ################################################################# dp ##
        #######################################################################



        
                            ╦ ╦╔═╗╦═╗╔═╗╔═╗╔═╗  ╔╦╗╔═╗╔╦╗╔═╗╔╗ ╔═╗╔═╗╔═╗
                            ╠═╣║╣ ╠╦╝║ ║║╣ ╚═╗   ║║╠═╣ ║ ╠═╣╠╩╗╠═╣╚═╗║╣ 
                            ╩ ╩╚═╝╩╚═╚═╝╚═╝╚═╝  ═╩╝╩ ╩ ╩ ╩ ╩╚═╝╩ ╩╚═╝╚═╝

        
      
        "
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

        input = gets.chomp.upcase!
        
        if input == array[0]
            puts new_hero.biography
        elsif input == array[1]
            puts new_hero.appearance
        elsif input == array[2]
            puts new_hero.connections
        else
            puts "This isn't in the database."
        end

       
    end

    def another_one

        input = nil
        while input != "exit"
            puts "Type menu to look for someone else or type exit to exit"
            input = gets.strip.downcase
        
            if input == "menu"
                menu
            else        
                puts "Thank's for using the Heroes database."
            end
        end
    end
end
