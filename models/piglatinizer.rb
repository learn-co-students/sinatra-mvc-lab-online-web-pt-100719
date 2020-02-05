class PigLatinizer 

    def piglatinize(string)
        phrase = string.split(" ")
  
        phrase = phrase.map do |w|
            if w.match(/^([^aeiouAEIOU]+)/)
                first_letter = w.match(/^([^aeiouAEIOU]*)/).to_s
                "#{w.gsub(/^([^aeiouAEIOU]*)/,"")}#{first_letter}ay"
            else
                "#{w}way"
            end
        end
        phrase.join(" ")
    end
    
    #  split_phrase = phrase.split(" ")    
    #  alpha = ('a'..'z').to_a
    #  vowels = %w[a e i o u]
    #  consonants = alpha - vowels

    #  converted_phrase = split_phrase.map do |w|
    #  if vowels.include?(w[0])
    #     w + 'way'
    #  elsif consonants.include?(w[0]) && consonants.include?(w[1])
    #     w[2..-1] + w[0..1] + 'ay'
    #  elsif consonants.include?(str[0])
    #     w[1..-1] + w[0] + 'ay'
    #  else
    #     w
    #     end
    #     converted_phrase
    #  end
    # end
end