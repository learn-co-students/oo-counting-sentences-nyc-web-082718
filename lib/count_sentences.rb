require 'pry'

class String

  def sentence?
    if self.end_with?(".")
    	true
    else
    	false
    end
  end

  def question?
    if self.end_with?("?")
    	true
    else
    	false
    end
  end

  def exclamation?
    if self.end_with?("!")
    	true
    else
    	false
    end
  end

  def count_sentences
    array = self.split

    array.count do |word|
      word.include?(".") or word.include?("?") or word.include?("!!") or word.include?("...")
    end
  end

end
