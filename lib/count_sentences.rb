require 'pry'

class String

  # def sentence?
  #   if self[-1] == "."
  #     true
  #   else false
  #   end
  # end

  def sentence?
    self.end_with?(".")
  end

  # def question?
  #   if self[-1] == "?"
  #     true
  #   else false
  #   end
  # end

  def question?
    self.end_with?("?")
  end

  # def exclamation?
  #   if self[-1] == "!"
  #     true
  #   else false
  #   end
  # end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    delimiters = ['.', '!', '?']
    new_array = self.split(Regexp.union(delimiters))
    new_array.delete_if { |sentence| sentence == "" }
    new_array.length
  end

end
