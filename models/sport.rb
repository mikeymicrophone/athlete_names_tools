class Sport
  attr_accessor :name, :leagues

  def initialize(name)
    @name = name
    @leagues = []
  end

  def add_league(league)
    @leagues << league
  end
end
