describe Game do

  let(:dan) {double :player, name: "dan"}
  subject(:game) {described_class.new dan}

  describe '#initialize' do
    it 'should have a player' do
      expect(game.player).to eq dan
    end
  end

  describe '#computers_choice' do
    it 'should return one of the available options' do
      allow_any_instance_of(Array).to receive(:sample).and_return("Rock")
      expect(game.computers_choice).to eq 'Rock'
    end
  end

  describe '#match' do

    it 'return a losing message when the player loses' do
      game = Game.new(Player.new("Daniel"))
      game.player.choice("Paper")
      allow_any_instance_of(Array).to receive(:sample).and_return("Scissors")
      expect(game.match).to eq "You lose, better luck next time!"
    end

    it 'returns a tie message when the player choose the same option' do
      game = Game.new(Player.new("Daniel"))
      game.player.choice("Paper")
      allow_any_instance_of(Array).to receive(:sample).and_return("Paper")
      game.computers_choice
      expect(game.match).to eq "It's a tie!"
    end

    it 'returns a victory message when the player beats the computer' do
      game = Game.new(Player.new("Daniel"))
      game.player.choice("Scissors")
      allow_any_instance_of(Array).to receive(:sample).and_return("Paper")
      game.computers_choice
      expect(game.match).to eq "Congrats, you win!"
    end
  end
end
