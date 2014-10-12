class Book
  def initialize(title="")
    @title = title
  end

  def titleize(title)
    dont_cap = ["a", "an", "the", "for", "and", "nor", "but", "or", "yet", "so", "at", "around", "in", "by", "after", "along", "for", "from", "over", "of", "on", "to", "with", "without"]
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

  def title
    @title
  end

  def title=(title)
    @title = titleize(title)  
  end
end
