class PigLatinizer
  # Must figure out if input is one word or a string of multiple words

  # Refactor clunky method into small methods.
  def piglatinize(words)
    word_arr = words.split
    word_arr.map do |word|
      if !word[0..2].match?(/[aeiouAEIOU]/)
        word[3..-1] << word[0..2] << "ay"
      elsif !word[0..1].match?(/[aeiouAEIOU]/)
        word[2..-1] << word[0..1] << "ay"
      else
        if word.start_with?(/^[aeiouAEIOU]/)
          word << "way"
        elsif (word.length == 1 || word_arr.count == 1) && word.start_with?(/^[aeiouAEIOU]/)
          word << "way"
        elsif word.start_with?(/^[aeiouAEIOU]/) && word.length > 1
          word << "ay"
        else
          word[1..-1] << word[0] << "ay"
        end
      end
    end.join(" ")
  end
end