require_relative "../lib/01_mairie_christmas"

describe "the mairie christmas scraper" do
  it "should" do
    expect($mairies_array).to be_an(Array)
    expect($mairies_array).not_to be_empty
  end
end