require 'spec_helper'
require 'views/game'

feature 'Attack' do
 scenario 'Attack confirmation' do
   sign_in_and_play
   click_button "Attack"
   expect(page).to have_content ("#{Game.game.players[0].name} has attacked #{Game.game.players[1].name}")
 end

 scenario 'Attack reduces hp' do
   sign_in_and_play
   click_button "Attack"
   expect(page).to have_content ("#{Game.game.players[1].name} has #{Player::STARTING_HP-Player::DAMAGE}hp")
   #Expect when attack button is pressed, the player who is attacked loses hp
 end
end
