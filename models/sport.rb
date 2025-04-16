class Sport
  attr_accessor :name, :leagues

  def initialize(name)
    @name = name
    @leagues = []
  end

  def add_league(league)
    @leagues << league
  end

  # Returns all players in all leagues and teams for this sport
  def players
    @leagues.flat_map { |league| league.players }
  end
end
