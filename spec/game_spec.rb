require 'game'

describe Game do

  let(:bob) {double :player1, name: "bob"}
  let(:ross) {double :player2, name: "ross"}
  subject(:game) {described_class.new bob, ross}

  it "has a player 1" do
    expect(game.player_1).to eq bob
  end

  it "has a player 2" do
    expect(game.player_2).to eq ross
  end

  describe "#whallop" do
    it "damages the other player" do
      expect(ross).to receive(:been_hit)
      game.whallop ross
    end
  end

  describe "#current_player" do
    it "first turn returns player 1" do
      expect(game.current_player).to eq bob
    end

  end

  describe "#switch_player" do
    it "should flip the current_player" do
      game.switch_player
      expect(game.current_player).to eq ross
    end

  end

end
