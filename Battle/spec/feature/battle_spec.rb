require 'spec_helper'
require '././cool_app.rb'
#require '././index.erb'

RSpec.feature "Battle management", :type => :feature do
  scenario "user fills in form with name" do
    visit "/"

    fill_in :player1, with: "Tarquinn", visible: false
    fill_in :player2, with: "Gwenevere", visible: false
    click_button "Submit"
    expect(page).to have_text("Tarquinn challenges Gwenevere to duel to the death")
  end
end
