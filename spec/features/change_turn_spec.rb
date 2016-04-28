feature 'Show current player' do
  scenario 'turn one' do
    sign_in_and_play
    expect(page).to have_content "Bob it's your turn. To fight."
  end

  scenario 'turn two' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content "Ross it's your turn. To fight."
  end

  scenario 'turn three' do
    sign_in_and_play
    click_button 'Attack!'
    click_button 'Attack!'
    expect(page).to have_content "Bob it's your turn. To fight."
  end
end