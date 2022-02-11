require_relative '../lib/player.rb'
describe Player do 
  describe '#player_name' do
    it "returns the player's name" do 
      player_one = Player.new("Charlotte")
      expect(player_one.name).to eq "Charlotte"    
    end
  end 
end 