class PigLatinizer
    
    def piglatinize(phrase)
        splitten = phrase.split(" ")
        .map { |w| word_piglatinize(w) }
        .join(" ")
    end

    def word_piglatinize(word)
        vowel_index = word.downcase.index(/[aeiou]/)
        
        if vowel_index == 0
            updated_word = word + "way"
        else
            updated_word = word[vowel_index..word.length-1] + word[0..vowel_index - 1] + "ay"
        end
        updated_word
    end
end