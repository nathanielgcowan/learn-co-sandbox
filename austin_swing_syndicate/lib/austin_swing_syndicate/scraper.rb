class AustinSwingSyndicate::Scraper
  def self.scrape_events
    doc = Nokogiri::HTML(open("http://austinswingsyndicate.org/events/"))
    binding.pry
  end
end