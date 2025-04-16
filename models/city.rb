class City
  attr_accessor :name, :teams

  def initialize(name)
    @name = name
    @teams = []
  end

  def add_team(team)
    @teams << team
  end

  # Returns all unique leagues of teams in this city
  def leagues
    @teams.map(&:league).compact.uniq
  end

  # Returns all unique games played by teams in this city
  def games
    @teams.flat_map { |team| team.respond_to?(:games) ? team.games : [] }
  end

  # Returns all players in all teams in this city
  def players
    @teams.flat_map { |team| team.players }
  end

  # Returns all unique sports of teams in this city
  def sports
    @teams.map { |team| team.sport }.compact.uniq
  end
end
