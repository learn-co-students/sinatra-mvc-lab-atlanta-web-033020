class PigLatinizer

  def piglatinize(text)
    vowels = ["a", "e", "i", "o", "u"]
    ary = text.split(' ')
    pig_ary = []
    ary.each do |w|
      if vowels.include? w[0].downcase
        pig_ary << w + "way" 
      else
        i = w.downcase.index(/[aeiou]/)
        pig_ary << w[i, w.length] + w[0, i] + "ay"
      end
    end
    pig_ary.join(' ')
  end
end
