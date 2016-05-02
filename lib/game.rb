class Game
  attr :player, :computer_option

  def initialize(player)
    @player = player
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def computers_choice
    @computer_option = ['Rock','Paper','Scissors'].sample
  end

  def match
    if computer_option == player.player_option
      return "It's a tie!"
    elsif computer_option == "Rock" && player.player_option == "Paper"
      return "Congrats, you win!"
    elsif computer_option == "Paper" && player.player_option == "Scissors"
      return "Congrats, you win!"
    elsif computer_option == "Scissors" && player.player_option == "Rock"
      return "Congrats, you win!"
    else
      return "You lose, better luck next time!"
    end
  end
end
