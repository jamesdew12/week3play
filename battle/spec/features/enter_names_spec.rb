feature 'Entering player names' do
  scenario 'Can run app and check page content' do
    visit('/')
    fill_in :player1, with: 'james'
    fill_in :player2, with: 'bear'
    click_button('submit')
    expect(page).to have_content "james vs bear"
  end
end


feature 'View hit points' do
  scenario 'see Player 1 hit points' do
    visit('/')
    fill_in :player1, with: 'james'
    fill_in :player2, with: 'bear'
    click_button 'submit'
    expect(page).to have_content 'james: 60HP'
  end
end

feature 'stores names of players' do
  scenario 'store player name' do
    sign_in_and_play
    expect(page).to have_content 'james vs bear'
  end
end

feature 'attacking' do
  scenario 'attacks player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'james attacked bear'
  end
end

feature 'recieving damage when hit' do
  scenario 'attacks player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).not_to have_content 'bear: HP 100'
    expect(page).to have_content 'bear: HP 90'
  end
end
