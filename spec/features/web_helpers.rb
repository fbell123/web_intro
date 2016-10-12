def sign_in_and_play
  visit('/')
  fill_in :p1_name, with: 'Dave'
  fill_in :p2_name, with: 'Mittens'
  click_button "Submit"
end
