require 'spec_helper'
require 'views/player'

describe Player do
  subject(:player) {described_class.new("Ron")}
  context 'initialize' do
    it 'Name confirmation' do
      expect(player.name).to eq "Ron"
    end

    it "HP initializes at starting value" do
      expect(player.hp).to eq Player::STARTING_HP
    end

    it "HP can be reduced by reduce_hp method" do
      player.reduce_hp
      expect(player.hp).to eq Player::STARTING_HP-Player::DAMAGE
    end
  end

end
