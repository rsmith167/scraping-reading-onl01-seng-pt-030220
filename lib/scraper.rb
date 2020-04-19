require 'nokogiri'
require 'open-uri'
class Heros
  def Amethod
    doc = Nokogiri::HTML(open("https://playoverwatch.com/en-us/heroes"))
    all_hero_names = []
    all_role_types = []
    all_affiliation_types = []
    all_heroes = {}
    doc5 = Nokogiri::HTML(open("https://playoverwatch.com/en-us/heroes/ana/"))
    doc1 = Nokogiri::HTML(open("https://playoverwatch.com/en-us/heroes"))
    hero_array = doc1.css(".hero-portrait-detailed")
    hero_array.each { |hero_xml| 
            ph1 = hero_xml.text
            if ph1 == "D.Va"
                ph1 = "dva"
            elsif ph1 == "Lúcio"
                ph1 = "lucio"
            elsif ph1 == "Soldier: 76"
                ph1 = "soldier-76"
            elsif ph1 == "Torbjörn"
                ph1 = "torbjorn"
            elsif ph1 == "Wrecking Ball"
                ph1 = "wrecking-ball"
            end
            ph1.downcase!
            all_hero_names << ph1
            all_heroes[ph1] = {}
            ph2 = "https://playoverwatch.com/en-us/heroes/" + ph1
            doc2 = Nokogiri::HTML(open(ph2)) #go to heroes page
            all_role_types << doc2.css(".h2").text #HERO ROLE
            all_heroes[ph1]["role"] = doc2.css(".h2").text
            all_heroes[ph1]["name"] = doc2.css(".hero-bio").css(".name").text
            all_heroes[ph1]["occupation"] = doc2.css(".hero-bio").css(".occupation").text
            all_heroes[ph1]["base"] = doc2.css(".hero-bio").css(".base").text
            all_affiliation_types << doc2.css(".hero-bio").css(".affiliation").text
            all_heroes[ph1]["affiliation"] = doc2.css(".hero-bio").css(".affiliation").text
            }
          end
             all_role_types = all_role_types.collect {|x| x}.uniq
              all_affiliation_types = all_affiliation_types.collect {|x| x}.uniq
  end
  ar = []
  all_hero_names.each {|x|   
  if all_heroes[x]["role"] == "Tank"
   ar << x
  end
  }
  }
  
  all_heroes.collect {|x| x["role"] == "Tank"}
  
  
  ar = []
  all_hero_names.collect {|x|   
  all_heroes[x]["role"] = "Tank"
  }
  }
  
  
  