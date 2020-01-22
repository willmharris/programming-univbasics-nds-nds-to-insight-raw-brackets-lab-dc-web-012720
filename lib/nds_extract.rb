$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  result = {}
  director_number = 0 
  director_name = "default"
  total_gross = 0 
  while director_number < nds.length do 
    director_name = nds[director_number][:name]
    film_number = 0 
    while film_number < nds[director_number][:movies].length do 
      total_gross = nds[director_number][:movies][film_number][:]
    end 
    director_number += 1 
  end 
  
  # total_gross = 0 
    #while loop for films 
  #result[director_name] = total_gross
p result 
  
  #nil
end
# Use loops, variables and the accessing method, [], to loop through the NDS and total up all the Be sure to return the result at the end!