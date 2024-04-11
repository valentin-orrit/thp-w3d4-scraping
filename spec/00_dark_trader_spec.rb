require_relative "../lib/00_dark_trader"

describe "the dark_trader scraper" do
  it "should not return an error if nil" do
    expect($cryptos_array).to be_an(Array)
    expect($cryptos_array).not_to be_empty
  end
end