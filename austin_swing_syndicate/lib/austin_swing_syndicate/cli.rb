class AustinSwingSyndicate::CLI 
  def call
    puts "Welcome to Austin Swing Syndicate!"
    # binding.pry
  end
  
  def get_events
    @events = ["A", "B", "C", "D"]
  end
  
  def list_events
    @events.each_with_index(1) do |event, index|
      puts "#{index}. #{event}"
    end
  end
end