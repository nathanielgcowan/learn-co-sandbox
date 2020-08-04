class AustinSwingSyndicate::Event
  @@all = []
  
  attr_accessor :name, :announcements
  
  def initialize(name)
    @name = name
    save
  end

  def self.all
    AustinSwingSyndicate::Scraper.scrape_events if @@all.empty?
    @@all
  end
  
  def announcements
    AustinSwingSyndicate::Scraper.scrape_events(self) if @@announcements.empty?
    @announcements
  end
  
  def save
    @@all << self
  end
end