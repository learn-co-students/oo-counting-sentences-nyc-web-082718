require 'pry'

class String

  def sentence?
    if self.end_with? "."
      true
    else
      false
    end
  end

  def question?
    if self.end_with? "?"
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with? "!"
      true
    else
      false
    end
  end

  def count_sentences
    sentence_count = 0
    arr_of_words = self.split(" ")

    arr_of_words.each do |word|
      if word.sentence?
        sentence_count += 1
      elsif word.question?
        sentence_count += 1
      elsif word.exclamation?
        sentence_count += 1
      end
    end

    sentence_count
  end
end
