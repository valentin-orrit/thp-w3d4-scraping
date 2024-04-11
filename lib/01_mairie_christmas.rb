require 'nokogiri'
require 'open-uri'
require 'pry'

begin
  doc = Nokogiri::HTML5(URI.open("https://www.aude.fr/annuaire-mairies-du-departement"))
  mairies = {}
  $mairies_array = []
  # print "loading."

  doc.css(".directory-block__item").each do |id|
    ville = id.at(".directory-block__content").content.strip.split(' ')[1..-1].join(' ')
    email = id.at(".infos__item.-email").content.strip

    mairies = {ville => email}
    $mairies_array << mairies

    # print "."
    # sleep(0.08)
  end
rescue NoMethodError
  puts "loaded!"
end

print "#{$mairies_array}\n"