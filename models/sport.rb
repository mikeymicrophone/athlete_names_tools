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

  # Returns all unique cities across all leagues and teams for this sport
  def cities
    @leagues.flat_map { |league| league.cities }.compact.uniq
  end

  # Returns all unique stadiums across all leagues and teams for this sport
  def stadiums
    @leagues.flat_map { |league| league.stadiums }.compact.uniq
  end

  # Returns all games across all leagues and teams for this sport
  def games
    @leagues.flat_map { |league| league.games }
  end
end
