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
end
