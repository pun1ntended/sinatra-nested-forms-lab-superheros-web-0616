class Superhero
  attr_accessor :name, :power, :bio

  HEROES = []
  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @bio = args[:bio]
    HEROES << self
  end

  def self.all
    HEROES
  end
  
end