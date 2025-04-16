class Game
  attr_accessor :home_team, :away_team, :stadium, :date

  def initialize(home_team, away_team, stadium, date)
    @home_team = home_team
    @away_team = away_team
    @stadium = stadium
    @date = date
  end
end
