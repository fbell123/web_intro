class Player
  attr_reader :name
  attr_accessor :hp

  STARTING_HP = 100
  DAMAGE = 10

  def initialize(name)
    @name = name
    @hp = STARTING_HP
  end

  def attack(player)
    player.reduce_hp
  end

  def reduce_hp
    @hp -= DAMAGE
  end
end
