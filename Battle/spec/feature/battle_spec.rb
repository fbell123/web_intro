require 'spec_helper'
require '././cool_app.rb'
#require '././index.erb'

RSpec.feature "Battle management", :type => :feature do
  scenario "user fills in form with name" do
  sign_in_and_play
  end
end

RSpec.feature "Battle hitpoints", :type => :feature do
  scenario "players can see each others hp" do
    visit "/play"

    expect(page).to have_content '100HP'
  end
end
