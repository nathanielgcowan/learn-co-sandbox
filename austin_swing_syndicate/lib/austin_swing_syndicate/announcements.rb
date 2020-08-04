class AustinSwingSyndicate::Announcements
  
  attr_accessor :name, :event, :key_info
  
  @@all = []
  
  def initialize(name, event)
    @name = name
    @event = event
    save
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
end