require_relative '../lib/player.rb'
describe Player do 
  describe '#player_name' do
    it "returns the player's name" do 
      player_one = Player.new("Charlotte")
      expect(player_one.name).to eq "Charlotte"    
    end
  end 

  describe '#attack' do
    it "reduces hit points" do
      player_one = Player.new("Charlotte")
      player_two = Player.new("Eddie")
      expect { player_one.attack(player_two) }.to change { player_two.hitpoints }.by(-10)
    end
  end
end 