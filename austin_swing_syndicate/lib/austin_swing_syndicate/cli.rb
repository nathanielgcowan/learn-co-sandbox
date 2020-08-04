class AustinSwingSyndicate::CLI 
  @@muted="\e[1;31m"
  @@grn="\e[1;32m"
  @@blu="\e[1;34m"
  @@mag="\e[1;35m"
  @@cyn="\e[1;36m"
  @@white="\e[0m"
  
  def call 
    puts "\n#{@@grn}Welcome to Austin Swing Syndicate!#{@@white}\n"
    @input = ""
    until @input == "exit"
      get_Events
      list_Events
      get_user_Event
      what_next
    end 
    goodbye
  end
  
  def get_Events
    @Events = AustinSwingSyndicate::Event.all
  end
  
  def list_Events
    puts 'Choose a Event to see Details.'
    @Events.each.with_index(1) do |Event, index| 
      puts "#{index}. #{Event.name}"
    end
  end
  
  def get_user_Event
    chosen_Event = gets.strip.to_i
    show_Details_for(chosen_Event) if valid_input(chosen_Event, @Events)
  end 
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0
  end 
  
  def show_Details_for(chosen_Event)
    Event = @Events[chosen_Event - 1]
    Event.get_Details
    puts "Here are Details for #{Event.name}"
    Event.Details.each.with_index(1) do |Detail, idx|
      puts "#{idx}. #{Detail.name}"
    end
    get_user_Detail(Event)
  end
  
  def get_user_Detail(Event)
    puts "Choose an Detail to see more informations."
    input = gets.strip
    Detail = Event.Details[input.to_i - 1]
    Detail.get_Detail_informations
    show_Detail_informations(Detail)
  end
  
  def show_Detail_informations(Detail)
    puts Detail.name
    Detail.key_info.each {|i| puts "- #{i}"}
  end 
  
  def what_next
    puts "Are you done? Type 'exit' to exit or hit any key to see more Details."
    @input = gets.strip
  end 
  
  def goodbye
    puts "Enjoy Austin Swing Syndicate!"
  end 
end