class AustinSwingSyndicateDanceClasses::Description
  attr_accessor :name, :party
  @@all =[]
  
  def initialize(name, party)
    @name = name
    @party = party
    add_to_party
    save
  end
  
  def self.all
    @@all
  end
  
  def add_to_party
    binding.pry
    @party.descriptions << self unless @party.descriptions.include?(self)
  end
  
  def save
    @@all << self
  end
end