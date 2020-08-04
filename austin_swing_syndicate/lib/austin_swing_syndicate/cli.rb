class AustinSwingSyndicate::CLI 
  def call
    puts "Welcome to Austin Swing Syndicate"
    gets_events
    list_events
    get_user_event
  end
  
  def gets_events
    puts "Choose an event for more information"
    @events= AustinSwingSyndicate::Event.all
  end
  
  def list_events
    @events.each.with_index(1) do |event, index|
      puts "#{index}. #{event}"
    end
  end
  
  def get_user_event
    chosen_event = gets.strip.to_i
    show_announcements_for(chosen_event) if valid_input(chosen_event,@events)
  end
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0
  end
  
  def show_announcements_for(chosen_event)
    event = @events[chosen_event - 1]
    puts "Here are our announcements for #{event}"
  end
end