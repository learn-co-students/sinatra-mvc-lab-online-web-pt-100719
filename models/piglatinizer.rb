class PigLatinizer
    
    def piglatinize(my_string)
        my_string = my_string.split(" ")
        new_string = ""
        my_string.collect do |word|
            if word.match(/^[^aeiouAEIOU]+/) == nil
                new_string += word + "way "
                
            else
                cons = word.scan(/^[^aeiouAEIOU]+/).join("") 
                new_string += word.sub(cons, "") + cons + "ay "
            end
        end
        new_string.rstrip
    end
end
