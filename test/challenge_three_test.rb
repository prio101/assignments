require "minitest/autorun"
require_relative "../lib/challenge_three"


class ChallengeThreeTest <  Minitest::Test
  
  def test_will_return_length_of_last_word_world
    string = "Hello World"
    challenge_three = ChallengeThree.new(string)
    assert challenge_three.length_of_last_word == 5
  end

  def test_will_return_length_of_last_word_moon
    string = "fly me  to  the moon  "
    challenge_three = ChallengeThree.new(string)
    assert challenge_three.length_of_last_word == 4
  end

  def test_will_return_length_of_last_word_joyboy
    string = "luffy is still joyboy"
    challenge_three = ChallengeThree.new(string)
    assert challenge_three.length_of_last_word == 6
  end
end