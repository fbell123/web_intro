require "spec_helper"
require "battle"

feature 'Enter names' do
 scenario 'submitting names' do
   sign_in_and_play
   expect(page).to have_text ('Dave')
 end
end
