require 'spec_helper'
require './lib/game'
require './lib/player'

feature 'Attack' do

    scenario "attacks player2" do
    sign_in_and_play
    click_button('ATTACK!')
    expect(page.text).to include('Gwenevere has 90HP')
    end

    scenario "attacks player1" do
      sign_in_and_play
      click_button('ATTACK!')
      click_button('Next attack')
      click_button('ATTACK!')
      expect(page.text).to include('Tarquinn has 90HP')
    end

    scenario "attacks player2 for second time" do
      sign_in_and_play
      click_button('ATTACK!')
      click_button('Next attack')
      click_button('ATTACK!')
      click_button('Next attack')
      click_button('ATTACK!')
      expect(page.text).to include('Gwenevere has 80HP')
    end


end
