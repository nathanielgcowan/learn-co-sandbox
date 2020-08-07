class AustinSwingSyndicateDanceClasses::Party
  attr_accessor :name, :descriptions
  @@all =[]
  
  def initialize(name)
    @name = name
    @descriptions = []
    save
  end
  
  def self.all
    AustinSwingSyndicateDanceClasses::Scraper.scrape_parties if @@all.empty?
    @@all
  end

  
  def get_descriptions
    AustinSwingSyndicateDanceClasses::Scraper.scrape_descriptions(self) if @descriptions.empty?
  end
  
  def save
    @@all << self
  end
end