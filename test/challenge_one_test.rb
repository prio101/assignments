require "minitest/autorun"
require_relative "../lib/challenge_one"


class ChallengeOneTest <  Minitest::Test

  def test_will_return_right_result_with_big_word
    string = 'Pressuuuuure'
    challenge_one = ChallengeOne.new(string)
    assert challenge_one.most_sequence == 'uuuuu'
  end

  def test_will_return_capital_letter_with_no_occorance
    string = 'Boat'
    challenge_one = ChallengeOne.new(string)
    assert challenge_one.most_sequence == 'B'
  end

  def test_will_return_empty_spaces_if_no_recurring_letters_available
    # A string with two spaces
    string = 'A Hot dog'
    challenge_one = ChallengeOne.new(string)
    assert challenge_one.most_sequence == '  ' # will match with two spaces
  end
end