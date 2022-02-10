feature "the homepage", type: :feature do

  scenario "display a form for players to fill thier names in" do
    visit '/'
    expect(page).to have_field("player_one")
    expect(page).to have_field("player_two")
    expect(page).to have_selector("input[type=submit][value='Submit']")
  end
end

feature 'Enter names' do
  scenario "Display player names" do
    visit '/'
    fill_in :player_one, with: 'Charlotte'
    fill_in :player_two, with: 'Eddie'
    click_button 'Submit'
    expect(page).to have_content "Charlotte" 
    expect(page).to have_content "Eddie"
  end
end

feature "play game", type: :feature do 
  scenario "display players hitpoints" do
    visit '/play'
    fill_in :player_one, with: "Charlotte"
    fill_in :player_two, with: "Eddie"
    click_button 'Submit'
    expect(page).to have_content "Eddie: 50hp"
    expect(page).to have_content "Charlotte: 50hp"
  end
  scenario "display battle option buttons" do
    visit '/play'
    expect(page).to have_selector(:link_or_button, "Attack!")
    expect(page).to have_selector(:link_or_button, "Paralyse")
    expect(page).to have_selector(:link_or_button, "Sleep, zzz")
    expect(page).to have_selector(:link_or_button, "Poison @_@") 
    expect(page).to have_selector(:link_or_button, "Heal <3") 
  end
end