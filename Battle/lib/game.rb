class Game

  attr_reader :players, :turn

  def initialize(player1, player2)
    @players = [player1, player2]
    @turn = player1
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def attack(player)
    player.take_damage
  end

  def switch
    @turn = current(turn)
  end

  def current(player_turn)
    @players.select { |player| player != player_turn }.first
  end


end
