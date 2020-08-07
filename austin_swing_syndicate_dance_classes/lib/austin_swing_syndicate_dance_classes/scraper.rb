class AustinSwingSyndicateDanceClasses::Scraper
  def self.scrape_parties
    doc = Nokogiri::HTML(open("http://austinswingsyndicate.org/events/"))
    parties = doc.css("div.slide-content")
    parties.each do |n|
        name = n.css("h3.slide-entry-title.entry-title a").text
        AustinSwingSyndicateDanceClasses::Party.new(name)
    end
  end
  
  def self.scrape_descriptions(party)
    AustinSwingSyndicateDanceClasses::Description.new("cool event", party)
    AustinSwingSyndicateDanceClasses::Description.new("uncool event", party)
  end
end