require "spec_helper"
require "battle"

feature 'Enter names' do
 scenario 'submitting names' do
   visit('/')
   fill_in :p1_name, with: 'Dave'
   fill_in :p2_name, with: 'Mittens'
   click_button "Submit"
   expect(page).to have_text ('Dave')
 end
end
