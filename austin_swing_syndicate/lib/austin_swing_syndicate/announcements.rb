class AustinSwingSyndicate::Announcements
  
  attr_accessor :name, :event, :announcement
  
  @@all = []
  
  def initialize(name, event)
    @name = name
    @event = event
    #notify the event about the announcements
    add-to_event
    save
  end
  
  def self.all
    @@all
  end
  
  def add_to_event
     @event.announcements << self unless @event.announcements include?(self)
  end
  
  def save
    @@all << self
  end
  
end