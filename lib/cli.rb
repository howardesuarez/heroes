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

        input = nil
        while input != "exit"
            input = gets.chomp.upcase!

            if input == "EXIT"
                goodbye
            elsif input == array[0]
                puts new_hero.biography
                puts "Type LOOKS or CREW for more info or  to terminate."
            elsif input == array[1]
                puts new_hero.appearance
                puts "Type BIO or CREW for more info or EXIT to Terminate."
            elsif input == array[2]
                puts new_hero.connections
                puts "Type LOOKS or BIO for more info or EXIT to Terminate."
           else
                puts "This isn't in the database."
            end
        end

       
    end

    def another_one

        input = nil
        while input != "exit"
            puts "Type menu to look for someone else or type exit to exit"
            input = gets.strip.downcase
            if input == "exit"
                goodbye
            elsif input == "menu"
                menu
            else
                puts "This isn't in the database."
            end
        end
    end

    def goodbye
        puts "Thank you for using Heroes Database!"
        exit!
    end


        #cli = CLI.new
        #if object["response"] == "error"
        #   puts "This Hero is not in our database, apologies."   
        #  cli.another_one
    

end
