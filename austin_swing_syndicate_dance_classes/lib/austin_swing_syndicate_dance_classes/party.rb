class AustinSwingSyndicateDanceClasses::Party
  attr_accessor :name, :description, :date
  @@all =[]
  
  def initialize(name,description, date)
    @name = name
    @description = description
    @date = date
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