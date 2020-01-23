class PigLatinizer
  attr_accessor :phrase
  
  def initialize(phrase)
  end
  
  def piglatinize(phrase)
    phrase = phrase.split(" ")
    
    phrase = phrase.map do |word| 
      if word.match(/^([^aeiouAEIOU]+)/)
        first_letter = word.match(/^([^aeiouAEIOU]*)/).to_s #will return first letter that is vowel 
        "#{word.gsub(/^([^aeiouAEIOU]*)/, "")}#{first_letter}ay"
      else
        "#{word}way"
      end
    end
      
    phrase.join(" ") 
      
  end
  
  # def new_phrase(phrase)
  #   phrase.split.collect do |word|
  #     piglatinize(word).join(" ")
  #   end
  # end
  
end