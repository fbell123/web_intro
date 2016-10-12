require 'spec_helper'
require 'views/player'

describe Player do
  subject(:player1) {described_class.new("Ron")}
  subject(:player2) {described_class.new("Malfoy")}
  context 'initialize' do
    it 'Name confirmation' do
      expect(player1.name).to eq "Ron"
    end

    it "HP initializes at starting value" do
      expect(player1.hp).to eq Player::STARTING_HP
    end

  end
end
