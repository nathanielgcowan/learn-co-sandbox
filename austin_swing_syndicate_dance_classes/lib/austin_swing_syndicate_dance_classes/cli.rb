class AustinSwingSyndicateDanceClasses::CLI
  
  def call
    puts "
   ____                          ___,                         
  (|   \                        /   |              o          
   |    |__,   _  _   __  _    |    |          ,_|_    _  _   
  _|    /  |  / |/ | /   |/    |    |  |   |  / \| |  / |/ |  
 (/\___/\_/|_/  |  |_\___|__/   \__/\_/ \_/|_/ \/|_|_/  |  |_/
                                                              
                                                              
"
    puts "Hello and welcome to Austin Swing Syndicate. We encourage others to learn how to swing dance."
    get_party
    list_party
    show_answer
  end
  
  def get_party
    @parties = AustinSwingSyndicateDanceClasses::Party.all
  end
  
  def get_options
    
  end
  def list_party
    puts "Here are the available parties. Choose one below to see more information?".blue
    my_statements = []
    @parties.map do |party|
      my_statements << "#{party.name}"
    end
    my_statements.sort.each.with_index(1) do |i, index|
      puts "#{index}. #{i}"
    end
  end
  
  def show_answer
    chosen_party = gets.strip.to_i
    if valid_input(chosen_party, @parties)
      give_info_for(chosen_party)
    else
      puts "ERROR!!! Invalid input, please try again.".red
      list_party
      show_answer
    end
  end
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0
  end
  
  def give_info_for(chosen_party)
    party = @parties[chosen_party- 1]
    party.description
    puts "Awesome choice!Feel free to read more about #{party.name} Would you like to look at another?".green 
    puts party.description
    puts party.date
    puts "Would you like to see another? Yes or No"
      want_to_see_more = gets.strip
      # if "yes"
      # list_party
      # show_answer
  end
end