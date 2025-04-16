class Team
  attr_accessor :name, :players, :league, :city, :stadium
  @@all_teams = []

  def initialize(name, league, city = nil, stadium = nil)
    @name = name
    @league = league
    @city = city
    @stadium = stadium
    @players = []
    @@all_teams << self
  end

  def add_player(player)
    @players << player
  end

  def sport
    @league.sport if @league
  end

  def self.find_by_name(name)
    @@all_teams.find { |team| team.name == name }
  end

  def self.all
    @@all_teams
  end
end
