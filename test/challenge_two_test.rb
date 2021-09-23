require "minitest/autorun"
require_relative "../lib/challenge_two"


class ChallengeTwoTest <  Minitest::Test
  
  def test_will_return_subset_of_max_sum
    elements = [ 2, -4, 6, 8, -10, 100, -6, 5 ]
    challenge_two = ChallengeTwo.new(elements)
    assert challenge_two.max_sub_array == "2 to 5"
  end
end