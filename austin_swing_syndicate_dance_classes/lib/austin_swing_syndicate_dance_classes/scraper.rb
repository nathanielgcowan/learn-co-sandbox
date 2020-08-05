class AustinSwingSyndicateDanceClasses::Scraper
  def self.source
    doc = Nokogiri::HTML(open("http://austinswingsyndicate.org/events/"))
    binding.pry
    
  #   things = doc.css("div.slide-content")
  # end
  #   party.each do |for_result|
  #       party = for_result.text
  #       AustinSwingSyndicateDanceClasses::Dates.new(party)
  #   end
  end
end