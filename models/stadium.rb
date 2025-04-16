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
end
