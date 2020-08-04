class AustinSwingSyndicate::Event
  @@all = []
  
  attr_accessor :name, :announcements
  
  def initialize(title)
    @name = name
    @announcements = []
    save
  end

  def self.all
    AustinSwingSyndicate::Scraper.scrape_events if @@all.empty?
    @@all
  end
  
  def announcements
    AustinSwingSyndicate::Scraper.scrape_events(self) if @@announcements.empty?
  end
  
  def save
    @@all << self
  end
end