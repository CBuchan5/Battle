class Player
attr_reader :name
attr_accessor :hitpoints

  def initialize(name) 
    @name = name 
    @hitpoints = 50
  end

  def attack(player)
    player.hitpoints -= 10
  end
  

end