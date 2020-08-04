class AustinSwingSyndicate::Scraper 
  def self.scrape_Events 
    doc = Nokogiri::HTML(open("https://www.edenproject.com/visit/whats-on"))
    
    Events = doc.css("select#edit-date-filter-Event option") 
    
    Events.each do |m|
       name = m.text
       ref = m.attr("value")
       AustinSwingSyndicate::Event.new(name, ref)
    end 
  end 
  
  def self.scrape_Details(Event)
      url = "https://www.edenproject.com/visit/whats-on?date_filter_type=Event&date_filter_Event=#{Event.ref}"
      doc = Nokogiri::HTML(open(url))
      
      Details = doc.css("ul.boxes.cf li")
      Details.each do |e|
        title = e.css("span.teaser_caption-inner").text.strip
        url = e.css("a").attr("href").value
        AustinSwingSyndicate::Detail.new(title, Event, url)
      end 
  end
  
  def self.scrape_key_info(Detail)
    url = "https://www.edenproject.com#{Detail.url}"
    doc = Nokogiri::HTML(open(url))
    lis = doc.css("div.highlight_content li")
    lis.each do |li|
      info = li.text.strip
      Detail.key_info << info
    end 
  end 
end 