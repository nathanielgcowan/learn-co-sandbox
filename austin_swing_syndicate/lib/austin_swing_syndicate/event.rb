class AustinSwingSyndicate::Detail
  attr_accessor :name, :Event, :url, :key_info
  @@all = []
   
  def initialize(name, Event, url)
    @name = name
    @Event = Event
    @url = url
    @key_info = []
    # notify Event about the Detail
    add_to_Event
    save
  end 
  
  def self.all 
    @@all 
  end
  
  def add_to_Event
    @Event.Details << self unless @Event.Details.include?(self)
  end 
  
  def get_Detail_informations
    AustinSwingSyndicate::Scraper.scrape_key_info(self) if @key_info.empty?
  end 
  
  def save
    @@all << self
  end
end 