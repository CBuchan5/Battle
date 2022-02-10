def sign_in_and_play
  visit '/'
    fill_in :player_one, with: "Charlotte"
    fill_in :player_two, with: "Eddie"
    click_button 'Submit'
end