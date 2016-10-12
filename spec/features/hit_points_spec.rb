require "spec_helper"
require "battle"

feature 'initialize hit points' do
 scenario 'viewing hit points' do
   sign_in_and_play
   expect(page).to have_content "#{@p2_hp} HP"
 end
end
