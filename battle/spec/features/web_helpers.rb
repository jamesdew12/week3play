def sign_in_and_play
  visit('/')
  fill_in :player1, with: 'james'
  fill_in :player2, with: 'bear'
  click_button 'submit'
end
