class ChallengeThree
  attr_reader :string

  def initialize string
    @string = string
  end

  def length_of_last_word
    unless @string.nil? or @string.empty?
      @string.split(" ").last.length      
    end
  end
end