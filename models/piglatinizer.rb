class Piglatinizer
  attr_reader :phrase
 
  def piglatinize(phrase)
    @phrase = phrase.downcase 
    vowels = ['a', 'e', 'i', 'o', 'u']
    words = sent.split(' ')
    result = []
  
  words.each_with_index do |word, i|
    translation = ''
    qu = false
    if vowels.include? word[0]
        translation = word + 'ay'
        result.push(translation)
    else
        word = word.split('')
        count = 0
        word.each_with_index do |char, index|
            if vowels.include? char
                # handle words that start with 'qu'
                if char == 'u' and translation[-1] == 'q'
                    qu = true
                    translation = words[i][count + 1..words[i].length] + translation + 'uay'
                    result.push(translation)
                    next
                end
                break
            else
                # handle words with 'qu' in middle
                if char == 'q' and word[i+1] == 'u'
                    qu = true
                    translation = words[i][count + 2..words[i].length] + 'quay'
                    result.push(translation)
                    next
                else
                    translation += char
                end
                count += 1
            end
        end
        # translation of consonant words without qu
        if not qu
            translation = words[i][count..words[i].length] + translation + 'ay'
            result.push(translation)
        end
    end

end
result.join(' ')
  
  
  
  
#   def vowel?(word)
#     letter = word[0]
#     if ["a", "e", "i", "o", "u"].include?(letter)
#       true 
#     else
#       false
#     end
#   end
  
#   def piglatinize_word(word)
#     if word.vowel? == true
#         "#{word}way"
#     else
#       consonants = []
#       consonants << word[0]
#         if word.vowel?(word[1]) == false
#           consonants << word[1]
#         if ["a", "e", "i", "o", "u"].include?(word[2]) == false
#             consonants << word[2]
#           end
#         end
#       "#{word[consonants.length..-1] + consonants.join + "ay"}"
#     end
#   end

# end


# def translate(sent)
#     sent = sent.downcase
#     vowels = ['a', 'e', 'i', 'o', 'u']
#     words = sent.split(' ')
#     result = []



