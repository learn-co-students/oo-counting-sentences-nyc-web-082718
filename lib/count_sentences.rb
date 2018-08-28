require 'pry'

class String

  def sentence?
    self.split('').last == '.'
  end

  def question?
    self.split('').last == '?'
  end

  def exclamation?
    self.split('').last == '!'
  end

  def count_sentences
    count = 0
    simpler = self.gsub(/\.+/, '.')
    simpler = simpler.gsub(/!+/, '!')
    simpler = simpler.gsub(/\?+/, '?')
    puts simpler
    simpler.split('').each do |c|
      if ['.', '!', '?'].include? c
        count += 1
      end 
    end 
    count
  end
end
