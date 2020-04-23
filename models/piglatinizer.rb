require 'pry'
class PigLatinizer
    def piglatinize(word)
        words = word.split(' ')
        sentence = words.map do |word|
            firstVowel = word.downcase.index(/[aeiou]/)
            if firstVowel == 0
                pigLatin = word + "way"
            elsif firstVowel
                counter = 0
                firstPart = ""
                while counter < firstVowel do
                    firstPart = firstPart + word[0]
                    word.slice!(0)
                    counter = counter + 1
                end
                pigLatin = word + firstPart + "ay"
            else
                pigLatin = word + "ay"
            end
            pigLatin
        end
        sentence.join(' ')
    end
end