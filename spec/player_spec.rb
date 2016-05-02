describe Player do
  let(:subject) { described_class.new("Daniel") }

  it 'should have a name' do
    expect(subject.name).to eq "Daniel"
  end

  describe '#option' do
    it 'should allow a player to choose an option from a game' do
      expect(subject.choice("Rock")).to eq subject.player_option
    end
  end
end
