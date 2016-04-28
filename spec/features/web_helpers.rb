def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: "Bob"
  fill_in :player_2_name, with: "Ross"
  click_button "Lets Get It On!"
end

def sign_in_and_play_2
  visit('/')
  fill_in :player_1_name, with: "Fergus"
  fill_in :player_2_name, with: "Emmett"
  click_button "Lets Get It On!"
end
