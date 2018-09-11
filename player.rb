class Player
  attr_reader :hp, :name

  def initialize(name)
    @name = name
    @hp = 3
  end

  def lose_hp
    @hp -= 1
  end
end
