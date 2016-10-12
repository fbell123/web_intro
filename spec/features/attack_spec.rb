require 'spec_helper'

feature 'Attack' do
 scenario 'Attack confirmation' do
   sign_in_and_play
   click_button "Attack"
   expect(page).to have_content ("#{@p1_name} has attacked #{@p2_name}")
 end

 scenario 'Attack reduces hp' do
   sign_in_and_play
   click_button "Attack"
   expect(page).to have_content ("#{@p2_name} has #{Player::STARTING_HP-Player::DAMAGE}hp")
   #Expect when attack button is pressed, the player who is attacked loses hp
 end
end
