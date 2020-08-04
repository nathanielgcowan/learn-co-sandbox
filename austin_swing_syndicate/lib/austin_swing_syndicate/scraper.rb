# class AustinSwingSyndicate::Scraper
#   def self.scrape_events
#     doc = Nokogiri::HTML(open("http://austinswingsyndicate.org/events/"))
#     events = doc.css("div.slide-content")
    
#     events.each do |thing|
#       name = thing.text
#       AustinSwingSyndicate::Event.new(name)
#     end
#   end
  
#   def self.scrape_announcements(event)
#     AustinSwingSyndicate::Announcements.new("cool_event", event)
#     AustinSwingSyndicate::Announcements.new("uncool_event", event)
#   end
# end