
feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :name1, with: 'Gerrard'
    fill_in :name2, with: 'Mittens'
    click_button 'Raise your Gauntlets'
    expect(page).to have_content 'Gerrard finds him/herself eye to eye with the stealy gaze of Mittens'
  end
  scenario 'default names' do
    visit('/')
    click_button 'Raise your Gauntlets'
    expect(page).to have_content 'Jo finds him/herself eye to eye with the stealy gaze of Fergus'
  end
end

feature 'Display hit points' do
  scenario 'player2' do
    visit('/')
    click_button 'Raise your Gauntlets'
    expect(page).to have_content 'Fergus: 100HP'
  end
end
