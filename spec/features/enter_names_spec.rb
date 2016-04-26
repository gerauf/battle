
feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Marmaduke finds him/herself eye to eye with the stealy gaze of Eugene'
  end
  scenario 'default names' do
    visit('/')
    click_button 'Raise your Gauntlets'
    expect(page).to have_content 'Marmaduke finds him/herself eye to eye with the stealy gaze of Eugene'
  end
end

feature 'Display hit points' do
  scenario 'player2' do
    sign_in_and_play
    expect(page).to have_content 'Eugene: 100HP'
  end
end

feature 'Attacking' do
  scenario 'player 1 confirmation' do
    sign_in_and_play
    click_button 'Whack'
    expect(page).to have_content 'Ouch, Marmaduke that really hurts'
  end
end
