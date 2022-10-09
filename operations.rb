require_relative '../extra_operations'
require 'net/http'
require 'json'

module Calculator
  class Operations
    include ExtraOperations
    
    def biased_mean(grades, blacklist)
        grades: {"Tomás":10, "Iury":10, "Vini":10, "Arnaldo": 9.2}
        grades_hash = JSON.parse(grades)
        blacklist: "Tomás Iury"
        blacklist_split = list.split
        if grades_hash[:Tomás] == blacklist_split[0] && grades_hash[:Iury] == blacklist_split[2]
            grades_hash.delete(:Tomás) 
            grades_hash.delete(:Iury)
        end
        soma = 0
        grades_hash.each do |key, value|
            soma = soma + value
        end
        media = soma/2
    end
  
    def no_integers(numbers)
  
    end
  
    def filter_films(genres, year)
      films = get_films
  
    end
    
    private
  
    def get_films
      url = 'https://raw.githubusercontent.com/yegor-sytnyk/movies-list/master/db.json'
      uri = URI(url)
      response = Net::HTTP.get(uri)
      return JSON.parse(response, symbolize_names: true)
    end
  end
end
