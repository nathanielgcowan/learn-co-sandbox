class AustinSwingSyndicate::CLI
  
  # @@muted="\e[1;31m"
  # @@grn="\e[1;32m"
  # @@blu="\e[1;34m"
  # @@mag="\e[1;35m"
  # @@cyn="\e[1;36m"
  # @@white="\e[0m"
  
  def call
    puts "\n#{@@blu}Welcome to Austin Swing Syndicate!#{@@white}"
    # gets_events
    # list_events
    # get_user_event
  end
  
  # def gets_events
  #   @events = AustinSwingSyndicate::Event.all
  # end
  
  # def list_events
  #   @events.each.with_index(1) do |event, index|
  #     puts "#{index}. #{event.name}"
  #   end
  # end
  
  # def get_user_event
  #   chosen_event = gets.strip.to_i
  #   show_announcements_for(chosen_event) if valid_input(chosen_event,@events)
  # end
  
  # def valid_input(input, data)
  #   input.to_i <= data.length && input.to_i > 0
  # end
  
  # def show_announcements_for(chosen_event)
  #   event = @events[chosen_event - 1]
  #   puts "\n#{@@blu}Here are our announcements for #{event.name}#{@@white}"
  # end
end