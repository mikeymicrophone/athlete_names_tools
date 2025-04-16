class Team
  attr_accessor :name, :players, :league

  def initialize(name, league)
    @name = name
    @league = league
    @players = []
  end

  def add_player(player)
    @players << player
  end
end
