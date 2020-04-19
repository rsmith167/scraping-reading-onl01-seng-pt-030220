require 'nokogiri'
require 'open-uri'
doc = Nokogiri::HTML(open("https://playoverwatch.com/en-us/heroes"))
   @@all_hero_names = []
    @@all_role_types = []
    @@all_affiliation_types = []
    @@all_heroes = {}
    #this should probably be the def init portion
    doc1 = Nokogiri::HTML(open("https://playoverwatch.com/en-us/heroes")) #make a list of all heros and their attributes
    hero_array = doc1.css(".hero-portrait-detailed")
    hero_array.each { |hero_xml| 
            ph1 = hero_xml.text #get FIRST hero name from main page 
            ph1.downcase!
            @@all_hero_names << ph1
            @@all_heroes[ph1] = {}
            ph2 = "https://playoverwatch.com/en-us/heroes/" + ph1
            doc2 = Nokogiri::HTML(open(ph2)) #go to heroes page
            @@all_role_types << doc2.css(".h2").text #HERO ROLE
            @@all_heroes[ph1]["role"] = doc2.css(".h2").text
            @@all_heroes[ph1]["name"] = doc2.css(".hero-bio").css(".name").text
            @@all_heroes[ph1]["occupation"] = doc2.css(".hero-[bio").css(".occupation").text
            @@all_heroes[ph1]["base"] = doc2.css(".hero-bio").css(".base").text
            @@all_affiliation_types << doc2.css(".hero-bio").css(".affiliation").text
            @@all_heroes[ph1]["affiliation"] = doc2.css(".hero-bio").css(".affiliation").text
            }