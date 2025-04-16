class Stadium
  attr_accessor :name, :city, :teams

  def initialize(name, city)
    @name = name
    @city = city
    @teams = []
  end

  def add_team(team)
    @teams << team
  end

  # Returns all unique leagues of teams in this stadium
  def leagues
    @teams.map(&:league).compact.uniq
  end

  # Returns all unique games played in this stadium by its teams
  def games
    @teams.flat_map { |team| team.respond_to?(:games) ? team.games : [] }
  end

  # Returns all players in all teams in this stadium
  def players
    @teams.flat_map { |team| team.players }
  end

  # Returns all unique sports of teams in this stadium
  def sports
    @teams.map { |team| team.sport }.compact.uniq
  end
end
