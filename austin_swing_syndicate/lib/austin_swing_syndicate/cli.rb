class AustinSwingSyndicate::CLI 
  def call
    puts "\nWelcome to Austin Swing Syndicate\n"
    get_events
    list_events
    get_user_events
  end
  
  def get_events
    @events = [ "J", "A", "S", "D"]
  end
  
  def list_events
    puts "Choose a event to see information"
    @events.each.while_index(1) do |event, index|
      puts "#{index}. #{event}"
    end
  end
  
  def get_user_events
    chosen_events = gets.strip
    binding.pry
    # if valid_input(chosen_events,@events)
    # end
  end
  
  def valid_input(input,data)
    input.to_i <= data.length && input.to_i > 0
  end
  
  
end