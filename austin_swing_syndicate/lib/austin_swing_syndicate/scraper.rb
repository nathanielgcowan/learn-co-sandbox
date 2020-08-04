class AustinSwingSyndicate::Scraper
  def self.scrape_events
    doc = Nokogiri::HTML(open("http://austinswingsyndicate.org/events/"))
    events = doc.css("div.slide-content")
    
    events.each do |event|
      name = event.text
      AustinSwingSyndicate::Event.new(name)
    end
  end
end