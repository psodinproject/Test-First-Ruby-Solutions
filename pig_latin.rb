def translate(input)
  vowels = ["a", "e", "i", "o", "u"]
  words = input.split
  output = []
  words.each do |word|
    if vowels.include?(word[0])
      output << word + "ay"
    else
      i = 0
      while i < word.length and !vowels.include?(word[i])
        i += 1
      end
      if word[i-1] == 'q'
        i += 1
      end
      output << word[i..-1] + word[0..i-1] + "ay"
    end
  end
  output.join(" ")
end
