class Season
  attr_accessor :start_date, :end_date, :champion, :games, :league

  def initialize(start_date, end_date, league, champion = nil)
    @start_date = start_date
    @end_date = end_date
    @league = league
    @champion = champion
    @games = []
  end

  def add_game(game)
    @games << game
  end

  # Access the sport through the league
  def sport
    @league&.sport
  end

  # All teams that played in this season (through games)
  def teams
    @games.flat_map { |game| [game.home_team, game.away_team] }.compact.uniq
  end

  # All players who played in this season (through games)
  def players
    @games.flat_map(&:players).uniq
  end

  # All stadiums used in this season (through games)
  def stadiums
    @games.map(&:stadium).compact.uniq
  end

  # All cities of stadiums used in this season
  def cities
    stadiums.map(&:city).compact.uniq
  end
end
