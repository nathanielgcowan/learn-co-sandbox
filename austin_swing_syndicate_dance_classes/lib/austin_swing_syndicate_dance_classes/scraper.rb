class AustinSwingSyndicateDanceClasses::Scraper
  def self.scrape_parties
    doc = Nokogiri::HTML(open("http://austinswingsyndicate.org/events/"))
    parties = doc.css("div.slide-content")
    parties.each do |n|
        name = n.css("h3.slide-entry-title.entry-title a").text
        description = n.css("div.slide-entry-excerpt.entry-content").text
        date= n.next_element.css("div.slide-meta time").text
        AustinSwingSyndicateDanceClasses::Party.new(name,description,date)
    end
  end
end