require 'spec_helper'
require './lib/game'
require './lib/player'

feature 'Attack' do

    scenario "allows attack of player" do
    sign_in_and_play
    click_button('ATTACK!')
    expect(page.text).to include('Gwenevere has 90HP')
    end


end
