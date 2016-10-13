require './lib/game'
require './lib/player'


describe "Swtich turns" do


    before do
      sign_in_and_play
      game = Game.begin(player1, player2)
    end


  it 'shows who\'s turn it is' do
    expect(page.text).to include("Tarquinn's turn")
  end

  it 'shows the next person\'s turn' do
    click_button('ATTACK!')
    expect(page.text).to include("Gwenevere's turn")
  end

end
