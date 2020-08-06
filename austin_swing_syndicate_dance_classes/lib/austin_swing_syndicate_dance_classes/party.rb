class AustinSwingSyndicateDanceClasses::Party
  @@all =[]
  attr_accessor :name
  
  def initialize(name)
    @name = name
    save
  end
  
  def self.all
    AustinSwingSyndicateDanceClasses::Scraper.scrape_parties if @@all.empty?
    @@all
  end
  
  def save
    @@all << self
  end
end