def sign_in_and_play
  visit "/"

  fill_in :player1, with: "Tarquinn", visible: false
  fill_in :player2, with: "Gwenevere", visible: false
  click_button "Submit"
  expect(page).to have_text("Tarquinn challenges Gwenevere to duel to the death")
end
