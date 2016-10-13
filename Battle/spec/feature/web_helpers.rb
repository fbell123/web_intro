

def sign_in_and_play
  visit "/"

  fill_in :player1, with: "Tarquinn"
  fill_in :player2, with: "Gwenevere"
  click_button "Submit"
  expect(page).to have_text("Tarquinn challenges Gwenevere to a duel to the death Tarquinn 100HP Gwenevere 100HP")
end
