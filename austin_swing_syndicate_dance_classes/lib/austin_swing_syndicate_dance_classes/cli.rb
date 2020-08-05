class AustinSwingSyndicateDanceClasses::CLI
  
  def call
    puts "greeting text"
    show_nights
    seen_nights
    picked_party
  end
  
  def show_nights
    @parties = AustinSwingSyndicateDanceClasses::Party.all
  end
  
  def seen_nights
    print "Which would you like?"
    @parties.each.with_index(1) do |party,index|
      puts "#{index}. #{party.name}"
    end
  end
  
  def picked_party
    going_to_party = gets.strip.to_i
    we_then_describe_the_iteria(going_to_party) if pressed(going_to_party, @parties)
  end
  
  def pressed(pick, choice)
    pick.to_i <= choice.length && pick.to_i > 0
  end
  
  def explain_the_details_to_the_poor_man(going_to_party)
    party = @parties[going_to_party - 1]
    print "Here's the details for you!! Hope to see you there?"
  end
end
