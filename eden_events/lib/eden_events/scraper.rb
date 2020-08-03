class EdenEvents::Scraper
  def self.scrape_months
    doc = Nokogiri::HTML (open("https://www.edenproject.com/visit/whats-here"))
    
    months = doc.css("select#edit-date-filter-months option")
    
    months.each do |m|
      puts m.text
      EdenEvents::Month.text(name)
    end
  end
  
  def self.scrape_events(month)
    EdenEvents::Event.new("cool event", month)
    EdenEvents::Event.new("uncool event", month)
  end
end