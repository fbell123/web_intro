class Player
  attr_reader :name
  attr_accessor :hp

  STARTING_HP = 50
  DAMAGE = 10
  
  def initialize(name)
    @name = name
    @hp = STARTING_HP
  end

  def reduce_hp
    @hp -= DAMAGE
  end

end
