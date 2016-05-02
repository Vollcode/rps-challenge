feature "Choosing an option" do

  scenario 'it allows to start a game of rock, paper, scissors by choosing an option' do
    visit('/')
    fill_in :player_name, with: 'Daniel'
    choose('rps')
    click_button "Start Game"
    choose('kroot')
    click_button "Play!"
    expect(page).to have_content 'result'
  end

end
