class Team
  attr_accessor :name, :players, :league, :city, :stadium

  def initialize(name, league, city = nil, stadium = nil)
    @name = name
    @league = league
    @city = city
    @stadium = stadium
    @players = []
  end

  def add_player(player)
    @players << player
  end

  def sport
    @league.sport if @league
  end
end
