require 'pry'

class String

  def sentence?
    if (self.end_with?("."))
      return true
    else
      return false
    end
  end

  def question?
    if (self.end_with?("?"))
      return true
    else
      return false
    end
  end

  def exclamation?
    if (self.end_with?("!"))
      return true
    else
      return false
    end
  end

  def count_sentences
    sentences = 0
    punctuation = [".", "?", "!"]
    # iterate over every character in the string
    self.chars.each.with_index do |char, index|
      # check if the character is a punctuation, and if the _next_ character is _not_ a punctuation
      if punctuation.include?(char) && !punctuation.include?(self[index + 1])
        sentences += 1
      end
    end
    sentences

    #regular expression solution, searches for ., ?, and ! in a string
    #self.split(/\.|\?|!/).filter { |sentence| !sentence.empty? }.size
  end
end