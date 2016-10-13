require_relative 'player'
class Game

#Access the Class (itself) to reference the data stored within the class elsewhere in our programme
  class << self; attr_accessor :game end

  def self.start(player1, player2)
    @game = Game.new(player1, player2)
  end


attr_reader :turn, :players
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

  def active_player
    Game.game.players[Game.game.turn[0]]
  end

  def idle_player
    Game.game.players[Game.game.turn[1]]
  end

  def player1
    players[0]
  end

  def player2
    players[1]
  end

end
