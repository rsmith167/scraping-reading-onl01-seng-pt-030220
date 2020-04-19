require 'nokogiri'
require 'open-uri'
doc = Nokogiri::HTML(open("https://playoverwatch.com/en-us/heroes"))
hero_array = doc.css(".hero-portrait-detailed")
hero_name_array = hero_array.collect {
  |hero_xml| hero_xml
  
}

    heroname.downcase!
    hero = ""
    hero = "https://playoverwatch.com/en-us/heroes/" + heroname
    doc3 =  Nokogiri::HTML(open(hero)) #go to FIRST heros page
    doc3.css(".h2").text #HERO ROLE
    doc3.css(".hero-bio").css(".name").text
    doc3.css(".hero-bio").css(".occupation").text
    doc3.css(".hero-bio").css(".base").text
    doc3.css(".hero-bio").css(".affiliation").text