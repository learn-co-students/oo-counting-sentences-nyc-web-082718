require 'pry'

class String

  def sentence?
    if self.end_with?('.')
      return true
    else
      return false
    end
  end

  def question?
    if self.end_with?('?')
      return true
    else
      return false
    end
  end

  def exclamation?
    if self.end_with?('!')
      return true
    else
      return false
    end
  end

  def count_sentences
    sentence_array = self.split(/\.|\?|\!/)
    #binding.pry
    sentence_array.delete_if {|string| string.length < 2}

    sentence_array.length
  end
end
