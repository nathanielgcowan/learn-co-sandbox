class AustinSwingSyndicate::Scraper
  def self.scrape_events
    doc = Nokogiri::HTML(open("http://austinswingsyndicate.org/events/"))
    events = doc.css("div.slide-content")
    
    events.each do |event|
      name = event.text
      traits = event.css("div").attr("footer")
      AustinSwingSyndicate::Event.new(name)
    end
  end
end