class PigLatinizer < Sinatra::Base
    attr_reader :words

    def latinize(phrase) 
     alpha = ('a'..'z').to_a
     vowels = %w[a e i o u]
     consonants = alpha - vowels

     if vowels.include?(phrase[0])
        phrase + 'ay'
     elsif consonants.include?(phrase[0]) && consonants.include?(phrase[1])
        phrase[2..-1] + phrase[0..1] + 'ay'
     elsif consonants.include?(str[0])
        phrase[1..-1] + phrase[0] + 'ay'
     else
        phrase
     end
    end
end