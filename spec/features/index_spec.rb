
feature "Entering type of game" do

  scenario 'it allows to start a game of classical rock, paper, scissors' do
    sign_in_and_play_rps
    expect(page).to have_content 'Rock'
  end

  scenario 'it allows to start a game of new rock, paper, scissors' do
    sign_in_and_play_rpsls
    expect(page).to have_content 'Lizard'
  end

end
