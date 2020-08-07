class AustinSwingSyndicateDanceClasses::CLI
  def call
    puts "Welcome to Austin Swing Syndicate"
    get_party
    list_party
    show_answer
  end
  
  def get_party
    @parties = AustinSwingSyndicateDanceClasses::Party.all
  end
  
  def list_party
    puts "Which would you like?"
    @parties.each.with_index(1) do |party, index|
      puts "#{index}. #{party.name}"
    end
  end
  
  def show_answer
    chosen_party = gets.strip.to_i
    give_info_for(chosen_party) if valid_input(chosen_party, @parties)
  end
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0
  end
  
  def give_info_for(chosen_party)
    party = @parties[chosen_party- 1]
    puts "Here's the details for you!! here for #{party.name}?"
    party.descriptions.each.with.index do |party, idx|
      puts party.name
    end
  end
end
