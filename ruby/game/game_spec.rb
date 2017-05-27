require_relative 'game'

describe Game do 
  let(:game) {Game.new("stereo")}

  it "stores a word on initialization" do
    expect(game.secret_word).to eq "STEREO"
  end

  it "gives back a whole number based on the words length" do
    expect(game.guesses_allowed).to eq 9
  end

  it "stores an array of previous guesses" do
    game.guess("O")
    game.guess("B")
    game.guess("S")
    expect(game.guesses).to eq ["O", "B", "S"]
  end

  it "returns a matching letter or an underscore" do
    game.guess("O")
    game.guess("G")
    expect(game.current_status).to eq "_ _ _ _ _ O "
  end

  it "returns true if there are no underscores in current status" do
    game.guess("S")
    game.guess("T")
    game.guess("E")
    game.guess("R")
    game.guess("O")
    expect(game.has_won).to eq true
  end

  it "returns false if there are underscores in current status" do
    game.guess("S")
    game.guess("T")
    game.guess("B")
    game.guess("R")
    game.guess("O")
    expect(game.has_won).to eq false
  end


end