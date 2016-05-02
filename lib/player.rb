class Player
  attr :name, :player_option

  def initialize(name)
    @name = name
  end

  def choice(option)
    @player_option = option
  end
end
