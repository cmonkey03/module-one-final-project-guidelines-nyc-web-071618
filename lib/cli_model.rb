class CommandLineInterface

  def greet
    puts "Welcome to Wellington Airport!\n
    While you wait for your luggage\n
    to arrive, we've made this app for you.\n
    If you've flown all the way to New Zealand\n
    to visit sites from Lord of the Rings,\n
    we know that you're going to love this app.\n"
    sleep 4
  end

  def gets_user_input_1
    puts "We've looked up some interesting\n
    facts about characters from the films,\n
    and we invite you to learn some \n
    more about them.\n"
    sleep 3
    puts "Please enter a number of a film from the\n
    Lord of the Rings Trilogy to get started.\n
    1. The Fellowship of the Ring
    2. The Two Towers
    3. The Return of the King"
    user_film_answer = gets.chomp
    unless user_film_answer == 1 || user_film_answer == 2 || user_film_answer == 3
      puts "Please enter 1, 2 or 3."
      user_film_answer = gets.chomp
    end
    user_film_answer
  end

  def answer_1(film)
    Character.most_talkative_character_in_film(film)
    Character.least_talkative_character_in_film(film)
  end

  def intro_and_find_most_and_least_talkative_character_for_a_film
    greet
    film = gets_user_input
    answer_1(film)
  end

  def character_name_to_instance(name)
    character_instance = Character.all.select {|character_instance| character_instance.name == name }
  end

end
