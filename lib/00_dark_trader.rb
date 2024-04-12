require 'nokogiri'
require 'open-uri'
require 'pry'

begin
  doc = Nokogiri::HTML5(URI.open("https://coinmarketcap.com/all/views/all/"))
  cryptos = {}
  $cryptos_array = []
  print "loading."

  doc.css(".cmc-table-row").each do |crypto|
    crypto_name = crypto.at(".cmc-table__cell--sort-by__symbol").content
    crypto_price = crypto.at(".cmc-table__cell--sort-by__price").content
    cryptos = {crypto_name => crypto_price}
    $cryptos_array << cryptos
    print "."
    sleep(0.08)
  end

rescue NoMethodError
  puts "loaded!"
end

print "#{$cryptos_array}\n"


testttt