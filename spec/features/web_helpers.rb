def sign_in_and_play
  visit('/')
  fill_in :name1, with: 'Marmaduke'
  fill_in :name2, with: 'Eugene'
  click_button 'Raise your Gauntlets'
end
