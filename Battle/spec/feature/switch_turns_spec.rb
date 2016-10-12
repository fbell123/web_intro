require './lib/game'
require './lib/player'


describe "Swtich turns" do

  it 'shows who\'s turn it is' do
    sign_in_and_play
    expect(page.text).to include("Tarquinn's turn")
  end

  it 'shows the next person\'s turn' do
    sign_in_and_play
    click_button('ATTACK!')
    expect(page.text).to include("Gwenevere's turn")
  end

end
