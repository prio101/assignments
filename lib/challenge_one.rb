class ChallengeOne
  
  attr_reader :string

  def initialize(string)
    @string = string
  end

  def most_sequence    
    unless @string.empty?
      res = []
      ascii = @string.split('').map(&:ord).sort
      max_occured_letter = ascii.max_by { |index| ascii.count(index) }
      ascii.map { |index| res << index.chr if index == max_occured_letter }
      res.join('')
    end    
  end
end
