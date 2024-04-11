require_relative "../lib/00_dark_trader"

describe "the dark_trader scraper" do
  it "should" do
    expect($cryptos_array).to be_an(Array)
    expect($cryptos_array).not_to be_empty
  end
end