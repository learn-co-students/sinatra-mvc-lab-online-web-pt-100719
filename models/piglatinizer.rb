class PigLatinizer
  attr_reader :input

  def initialize(input)
    @input = input
    starts_with?
  end
  
  def starts_with?
    new = self.input.split
    if self.input.downcase.start_with?(/^[aeiou]/) && new.count == 1
      "#{@input + "way"}"
    else
      new.map do |word|
        if word.downcase.start_with?(/^[aeiou]/)
          word << "way"
        elsif !word.downcase.start_with?(/^[aeiou]/)
          word[1..-1] + word[0] + "ay"
        end
      end
    end
  end
end