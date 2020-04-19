require 'nokogiri'
require 'open-uri'
doc = Nokogiri::HTML(open("https://playoverwatch.com/en-us/heroes"))
doc.css("data-group = ["TANK"])