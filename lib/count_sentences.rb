require 'pry'

class String

  def sentence?
    self[-1] == "."
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
    if self[/[\.?!]/]
      self.split(/[\.?!]/).reject {|s| s == ""}.length
    else
      0
    end
  end
end
