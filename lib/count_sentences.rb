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
    array_whit_sentences = array_whit_sentences.reject { |c| c.empty? }
    if array_whit_sentences.to_s.length == 0
      return 0
    else
      return array_whit_sentences.length
    end
  end
end
#(/(?<=[?.!])\s*/)
#array_whit_sentences.reject! { |s| s.strip.empty? }
