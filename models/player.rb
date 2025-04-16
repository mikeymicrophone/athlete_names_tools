class Player
  attr_accessor :first_name, :last_name, :team

  def initialize(first_name, last_name, team)
    @first_name = first_name
    @last_name = last_name
    @team = team
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end
end
