class CommandLineInterface

  ######################################
  #  greetings and main menu  #
  ######################################

  def greet1
    puts "\n
    Welcome to Wellington Airport!\n
    While you wait for your luggage\n
    to arrive, we've made this app for you.\n
    If you've flown all the way to New Zealand\n
    to visit sites from Lord of the Rings,\n
    we know that you're going to love this app.\n"
    sleep 4
  end # end of #greet1 # initial greeting

  def greet2
    puts "\n
    We've looked up some interesting\n
    facts about characters from the films,\n
    and we invite you to learn some \n
    more about them.\n"
    sleep 4
  end

  def main_menu
    puts "\n
    Type 'exit' at any point to quit program. Please select\n
    the area you'd like to know more about. Input the number that\n
    precedes your choice below:\n
          1. The Entire Trilogy\n
          2. Individual Films\n
          3. Individual Characters\n
          \n"
  end

  def get_main_menu_choice
    valid_response = false
    until valid_response
      input = gets.chomp.to_i
      if input==1
        sleep 1.5
        puts "\n
        OK. Loading The Entire Trilogy info.\n
        "
        valid_response = true
      elsif input==2
        sleep 1.5
        puts "\n
        Thank you. Loading Individual Films info.\n
        "
        valid_response = true
      elsif input==3
        sleep 1.5
        puts "\n
        Thank you. Loading Individual Characters info.\n
        "
        valid_response = true
      elsif input=='exit'
        sleep 1.5
        puts "\n
        OK. Exiting Now.\n
        "
        input = nil
        valid_response = true
      else
        sleep 1.5
        puts "\n
        Invalid input. Please type 1, 2, or 3.\n
        "
      end
    end
    input
  end


  ####################################################################
  # most and least talkative characters in Trilogy, Films, and Races #
  ####################################################################

  def get_trilogy_fact_choice
    sleep 1
    puts "\n
    Please enjoy the following Trilogy facts! Type 'end'\n
    at any point to return to the main menu. Enter the\n
    number that precedes your choice:\n
      1. Most talkative character in the trilogy.\n
      2. Least talkative character in the trilogy.\n "
    valid_response = false
    until valid_response
      input = gets.chomp.to_i
      if input == 1
        sleep 1
        puts "\n
        Thank you. Calculating most talkative character:"
        valid_response = true
      elsif input == 2
        sleep 1
        puts "\n
        Thank you. Calculating most talkative character:"
        valid_response = true
      else
        sleep 1
        puts "\n
        Invalid input. Please enter '1' or '2'"
      end
    end
    input
  end # end of #trilogy_facts # helper method for fork_in_road

  def display_trilogy_fact(user_fact_choice) # puts user's desired Trilogy fact to CL
    if user_fact_choice == 1
      puts Character.most_talkative_character_in_trilogy
      puts <<-gandalf
                           ,---.
                          /    |
                         /     |
            Gandalf     /      |
                       /       |
                  ___,'        |
                <  -'          :
                `-.__..--'``-,_\\_
                    |o/ ` :,.)_`>
                    :/ `     ||/)
                    (_.).__,-` |\
                    /( `.``   `| :
                  \\'`-.)  `  ; ;
                    | `       /-<
                    |     `  /   `.
            ,-_-..____     /|  `    :__..-'\
            /,'-.__\\  ``-./ :`      ;       \
          `\\`\\  `\\ \\ :  (   `  /  ,   `. \
          \\` \\   \\   |  | `   :  :    .\\ \
          \\ `\\_  ))  :  ;     |  |      ): :
          (`-.-'\\ || |\\\\   ` ;  ;       | |
          \\-_   `;;._   ( `  /  /_       | |
            `-.-.// ,'`-._\\__/_,'         ; |
          \\:: :     /     `     ,   /  |
            || |    (        ,' /   /   |
            ||                ,'   / SSt|
                    gandalf
    else
      puts Character.least_talkative_character_in_trilogy
    end
  end # end of #display_trilogy_fact

  def get_films_fact_choice # returns user's desired Films fact
    puts "Please enjoy the following Films facts! Type 'end'\n
    at any point to return to the main menu. Enter the\n
    number that precedes your choice:\n
      1. Most talkative character in The Fellowship Of The Ring.\n
      2. Least talkative character in The Fellowship Of The Ring.\n
      3. Most talkative character in The Two Towers.\n
      4. Least talkative character in The Two Towers.\n
      5. Most talkative character in The Return Of The King.\n
      6. Least talkative character in The Return Of The King.\n"

    valid_response = false
    until valid_response
      input = gets.chomp.to_i
      if input == 1
        puts "Thank you. Most talkative character in The Fellowship Of The Ring:\n
        "
        valid_response = true
      elsif input == 2
        puts "Thank you. Least talkative character in The Fellowship Of The Ring:\n
        "
        valid_response = true
      elsif input == 3
        puts "Thank you. Calculating most talkative character in The Two Towers:\n
        "
        valid_response = true
      elsif input == 4
        puts "Thank you. Calculating least talkative character in The Two Towers:\n
        "
        valid_response = true
      elsif input == 5
        puts "Thank you. Calculating most talkative character in The Return Of The King:\n
        "
        valid_response = true
      elsif input == 6
        puts "Thank you. Calculating least talkative character in The Return Of The King:\n
        "
        valid_response = true
      else
        puts "Invalid input. Please enter an integer from 1 and 6 inclusive.\n
        "
      end
    end
    input
  end # end of #get_films_fact_choice

  def display_films_fact(user_fact_choice)
    if user_fact_choice  == 1
      puts Character.most_talkative_character_in_film("The Fellowship Of The Ring")
    elsif user_fact_choice == 2
      puts Character.least_talkative_character_in_film("The Fellowship Of The Ring")
    elsif user_fact_choice == 3
      puts Character.most_talkative_character_in_film("The Two Towers")
    elsif user_fact_choice == 4
      puts Character.least_talkative_character_in_film("The Two Towers")
    elsif user_fact_choice == 5
      puts Character.most_talkative_character_in_film("The Return Of The King")
    elsif user_fact_choice == 6
      puts Character.least_talkative_character_in_film("The Return Of The King")
    end
  end # end of #display_films_fact

  def get_characters_fact_choice
    puts "\n
    Now is your chance to gaze into the Palantir and find out just how\n
    much of a blabber mouth your character is. Select and enter the number\n
    of a character below:\n"
    puts"\n"
    sleep 5
    Character.all.each_with_index do |char,index|
      puts "#{index+1}. #{char.name}"
    end

    puts "\n"

    valid_input = false
    until valid_input
      user_input = gets.chomp.to_i
      if user_input.class == Fixnum && user_input > 0 && user_input < 75
        puts"\n
        Thank you. Gazing into Palantir."
        valid_input = true
      else
        puts"\n
        Invalid input. Please enter an integer between 1 and 74 inclusive."
      end
    end
    user_input
  end

  def display_characters_fact(user_char_choice)
    char_name = Character.all[user_char_choice-1].name
    Character.character_wordcount_ranking(char_name)
  end
  # def get_fantastyrace_fact_choice
  #
  # end # end of #get_fantastyrace_fact_choice
  #
  # def display_fantasyrace_fact(user_fact_choice)
  #
  # end # end of #display_fantasyrace_fact

  #########################################################
  # #fork_in_road takes in user's choice of Trilogy, Films #
  # or Characters facts and directs program accordingly   #
  #########################################################

  def fork_in_road(main_menu_choice) # takes in user topic choice as 1,2 or 3 and loads the user's chosen domain

    if main_menu_choice == 1
      trilogy_fact_choice = get_trilogy_fact_choice
      display_trilogy_fact(trilogy_fact_choice)
    elsif main_menu_choice == 2
      films_fact_choice = get_films_fact_choice
      display_films_fact(films_fact_choice)
    elsif main_menu_choice == 3
      char_fact_choice = get_characters_fact_choice
      display_characters_fact(char_fact_choice)
    else

    end

  end # end of #fork_in_road

  #######################################################
  # #get_menu_or_exit sends user back to main menu if    #
  # input == 'main', quits whole app if input == 'exit' #
  #######################################################

  def get_menu_or_exit
    puts "\n
    There you go! Interesting, amirite?\n
    Enter 'main' to return to the main menu,\n
    or if you're done here enter 'exit':"
    valid_response = false
    until valid_response == true
      user_input = gets.chomp
      if user_input == 'exit'
        valid_response = true
      elsif user_input == 'menu'
        valid_response = true
      else
        puts "\n
        Invalid input. Please enter 'main' or 'quit' below:"
      end
    end
    user_input
  end

  ######################################################
  # .runner is CommandLineInterface class method which #
  # runs entire program in a loop until user quits     #
  ######################################################

  def self.runner # runs the whole dang CLI!!!
    cli = CommandLineInterface.new

    cli.greet1
    cli.greet2

    in_app = true

    while in_app
      cli.main_menu
      main_menu_choice = cli.get_main_menu_choice
      cli.fork_in_road(main_menu_choice)
      next_move = cli.get_menu_or_exit
      if next_move == 'exit'
        in_app = false
      end
    end
    sleep 1
    puts "You have passed the test. You shall remain Galadriel and fade into the West. Bai bai!"
  end # end of #runner

end # end of CommandLineInterface class






# #create a new instance of CommandLineInterface
# cli = CommandLineInterface.new
#
# # initially greet user
# cli.greet1
#
# # display second greeting and store user's choice btw Trilogy, Films or Characters in user_choice variable
# first_user_choice = cli.greet2_return_area_of_interest
#
# #input user_choice into #fork_in_road, which loads up relevant facts
# cli.fork_in_road(first_user_choice)
#
# ### IMPORTANT ###
# # we need to figure out ActiveRecord::Base::logger or else fork_in_road will
# # output 50 lines of ugly loading messages
