require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    splitUp = self.split(/[.!?]/)
    splitUp.delete_if{|e| e.length == 0}
    splitUp.count
  end
end
