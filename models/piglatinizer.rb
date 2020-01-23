class PigLatinizer
  # Must figure out if input is one word or a string of multiple words
  def piglatinize(words)
    new = words.split
    if words.start_with?(/^[aeiou]/) && new.count == 1
      puts "WORD WITH VOWEL"
      return (words + "way")
    elsif !words.start_with?(/^[aeiou]/) && new.count == 1
      puts "WORD WITH CONST"
      return (words[1..-1] + words[0] + "ay")
    end
    new.map do |word|
      if word.downcase.start_with?(/^[aeiou]/) && new.count > 1
        puts "WORDS WITH VOWEL"
        return word << "way"
      elsif !word.downcase.start_with?(/^[aeiou]/) && new.count > 1
        puts "WORDS WITH CONST"
        return word[1..-1] + word[0] + "ay"
      end
    end
  end
end