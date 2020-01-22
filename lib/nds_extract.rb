$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  result = {}
  director_number = 0 
  director_name = "default"
  while director_number < nds.length do 
    director_name = nds[director_number][:name]
    film_number = 0 
    total_gross = 0 
    while film_number < nds[director_number][:movies].length do 
      total_gross += nds[director_number][:movies][film_number][:worldwide_gross]
      film_number += 1 
    end 
    result[director_name] = total_gross
    director_number += 1 
  end 
p result 
#nil
end

test_array = [{:name=>"Stephen Spielberg",
  :movies=>
   [{:title=>"Jaws",
     :studio=>"Universal",
     :worldwide_gross=>260000000,
     :release_year=>1975},
    {:title=>"Close Encounters of the Third Kind",
     :studio=>"Columbia",
     :worldwide_gross=>135189114,
     :release_year=>1977},
    {:title=>"Raiders of the Lost Ark",
     :studio=>"Paramount",
     :worldwide_gross=>248159971,
     :release_year=>1981},
    {:title=>"E.T. the Extra-terrestrial",
     :studio=>"Universal",
     :worldwide_gross=>435110554,
     :release_year=>1982},
    {:title=>"Schindler's List",
     :studio=>"Universal",
     :worldwide_gross=>96898818,
     :release_year=>1993},
    {:title=>"Lincoln",
     :studio=>"Buena Vista",
     :worldwide_gross=>182207973,
     :release_year=>2012}]}, {:name=>"Russo Brothers",
  :movies=>
   [{:title=>"Avengers Endgame",
     :studio=>"Buena Vista",
     :worldwide_gross=>858371337,
     :release_year=>2019},
    {:title=>"Avengers Infinity War",
     :studio=>"Buena Vista",
     :worldwide_gross=>678815482,
     :release_year=>2018},
    {:title=>"Captain America Civil War",
     :studio=>"Buena Vista",
     :worldwide_gross=>408084349,
     :release_year=>2016},
    {:title=>"Captain America The Winter Soldier",
     :studio=>"Buena Vista",
     :worldwide_gross=>259766572,
     :release_year=>2014},
    {:title=>"You, Me and Dupree",
     :studio=>"Universal",
     :worldwide_gross=>75628110,
     :release_year=>2006},
    {:title=>"Welcome to Collinwood",
     :studio=>"Warner Brothers",
     :worldwide_gross=>336620,
     :release_year=>2002}]}]
  
  directors_totals(test_array)