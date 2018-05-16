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
    puts words
    count =0
    words.each do |word| 
      if self.sentence? | self.question? | self.exclamation? 
        count += 1 
      end 
    end
    count
  end 
end