require "spec_helper"
require "app"

feature 'initialize hit points' do
 scenario 'viewing hit points' do
   sign_in_and_play
   expect(page).to have_content "#{$game.player1.hp} HP"
 end
end
