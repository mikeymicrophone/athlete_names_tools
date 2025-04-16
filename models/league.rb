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
end
