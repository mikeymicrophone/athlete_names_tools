class Game
  attr_accessor :home_team, :away_team, :stadium, :date, :season, :final_score, :description, :players_involved

  def initialize(home_team, away_team, stadium, date, season = nil, final_score = nil, description = nil, players_involved = [])
    @home_team = home_team
    @away_team = away_team
    @stadium = stadium
    @date = date
    @season = season
    @final_score = final_score
    @description = description
    @players_involved = players_involved # ordered array of Player objects
  end

  # Returns all players involved in this game (ordered if provided, else all players from both teams)
  def players
    return @players_involved unless @players_involved.empty?
    [@home_team, @away_team].compact.flat_map { |team| team.players }
  end
end
