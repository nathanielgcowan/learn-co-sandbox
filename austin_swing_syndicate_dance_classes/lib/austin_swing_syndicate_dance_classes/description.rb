class AustinSwingSyndicateDanceClasses::Description
  attr_accessor :name, :party
  @@all =[]
  
  def initialize(name, party)
    @name = name
    @party = party
    save
  end
  
  def save
    @@all << self
  end
end