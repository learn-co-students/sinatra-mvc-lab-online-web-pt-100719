class PigLatinizer
  attr_accessor :user_phrase
  
  # def initialize(user_phrase)
  #   # @user_phrase = params[:user_phrase]
  # end
  
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
  
end