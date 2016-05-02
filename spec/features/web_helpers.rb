def sign_in_and_play_rps
  visit('/')
  fill_in :player_name, with: 'Daniel'
  choose('rps')
  click_button "Start Game"
end

def sign_in_and_play_rpsls
  visit('/')
  fill_in :player_name, with: 'Daniel'
  choose('rpsls')
  click_button 'Start Game'
end
