class Season
  attr_accessor :start_date, :end_date, :champion, :games

  def initialize(start_date, end_date, champion = nil)
    @start_date = start_date
    @end_date = end_date
    @champion = champion
    @games = []
  end

  def add_game(game)
    @games << game
  end
end
