require 'pry'

class String

  def sentence?
    return self.end_with?(".")
  end

  def question?
    return self.end_with?("?")
  end

  def exclamation?
    return self.end_with?("!")
  end

  def count_sentences
    words = self.split(' ')
    total_words = words.inject do |count, word| self.sentence? | self.question? | self.exclamation? count + 1 
  end
end