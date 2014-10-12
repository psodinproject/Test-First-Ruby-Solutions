def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, repeat=2)
  response = []
  repeat.times do
    response << string
  end
  response.join(" ")
end

def start_of_word(word, n=0)
  word[0..n-1]
end

def first_word(phrase)
  phrase.split[0]
end

def titleize(title)
  dont_cap = ["a", "an", "the", "for", "and", "nor", "but", "or", "yet", "so", "at", "around", "by", "after", "along", "for", "from", "over", "of", "on", "to", "with", "without"]
  title_array = title.split
  first_word = true
  title_array.each do |word|
    if first_word
      word.capitalize!
      first_word = false
    elsif !dont_cap.include?(word)
      word.capitalize!
    else 
      word.downcase
    end 
  end
  title_array.join(" ")
end
