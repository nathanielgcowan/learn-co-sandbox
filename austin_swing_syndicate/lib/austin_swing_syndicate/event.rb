class AustinSwingSyndicate::Event
  @@all = []
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    save
  end

  def self.all
    AustinSwingSyndicate::Scraper.scrape_events if @@all.empty?
    @@all
  end
  
  def save
    @@all << self
  end
end