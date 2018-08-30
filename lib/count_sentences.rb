require 'pry'

class String

  def sentence?
  # If the sentence (string) ends in a period ruby returns true
  # and return false if it doesn't.
  self.end_with?(".")
  end

  def question?
    # If the sentence(string) ends in a question mark, ruby returns
    # true and returns false if it doesn't.
    self.end_with?("?")
  end

  def exclamation?
    # If the sentence(string) ends in a exclamtion mark, ruby returns
    # true and returns false if it doesn't.
    self.end_with?("!")
  end

  def count_sentences
    count = 0
    self.split.each do |word|
      if word.sentence? || word.question? || word.exclamation?
        count += 1
      end
    end
    count
  end
end
