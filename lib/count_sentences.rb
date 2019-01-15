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
    array_whit_sentences = self.split(/(?<=[?.!])\s*/)
    if array_whit_sentences.to_s.length == 0
      0
    else
      array_whit_sentences.reject { |c| c.empty? }.count
    end
  end
end
