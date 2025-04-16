class League
  attr_accessor :name, :teams, :sport

  def initialize(name, sport)
    @name = name
    @sport = sport
    @teams = []
  end

  def add_team(team)
    @teams << team
  end

  # Returns all players in all teams of this league
  def players
    @teams.flat_map { |team| team.players }
  end

  # Returns all unique cities of teams in this league
  def cities
    @teams.map(&:city).compact.uniq
  end

  # Returns all unique stadiums of teams in this league
  def stadiums
    @teams.map(&:stadium).compact.uniq
  end

  # Returns all games played by teams in this league
  def games
    @teams.flat_map { |team| team.respond_to?(:games) ? team.games : [] }
  end
end
