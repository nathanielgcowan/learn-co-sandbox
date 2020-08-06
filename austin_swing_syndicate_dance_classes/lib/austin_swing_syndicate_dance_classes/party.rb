class AustinSwingSyndicateDanceClasses::Party
  @@all =[]
  attr_accessor :name :description
  
  def initialize(name)
    @name = name
    @description = []
    save
  end
  
  def self.all
    AustinSwingSyndicateDanceClasses::Scraper.scrape_parties if @@all.empty?
    @@all
  end
  
  def description
    AustinSwingSyndicateDanceClasses::Scraper.scrape_description if @@all.empty?
    @description
  end
  
  def save
    @@all << self
  end
end