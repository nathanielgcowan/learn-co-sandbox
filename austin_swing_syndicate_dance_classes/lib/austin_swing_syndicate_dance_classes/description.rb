class AustinSwingSyndicateDanceClasses::Description
  attr_accessor :name, :descriptions
  @@all =[]
  
  def initialize(name, description)
    @name = name
    @description = description
    save
  end
  
  def self.all
    @@all
  end
  
  def add_to_description
    @party.descriptions << self unless @party.descriptions include?(self)
  end
  
  def save
    @@all << self
  end
end