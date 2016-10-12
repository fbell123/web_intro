require_relative 'player'
class Game
attr_reader :players, :turn
  def initialize(player1, player2)
    @players = [Player.new(player1), Player.new(player2)]
    @turn = [0,1]
  end

  def attack(player)
    player.reduce_hp
    change_turn
  end

  def change_turn
    @turn.rotate!
  end



end
