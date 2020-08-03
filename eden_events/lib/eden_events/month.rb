class EdenEvents::Month
  attr_accessor :name, :events
  @@all = []
  
  def initialize(name)
    @name= name
    @events = []
    save
  end
  
  def self.all
    EdenEvents::Scraper.scrape_months if @@all.empty?
    @@all
  end
  
  def events
    if @events.empty?
    @events
  end
  
  def get_events
    EdenEvents::Scraper.scrape_events(self) if @events.empty?
    @events
  end
  
  def save
    @@all << self
  end
end