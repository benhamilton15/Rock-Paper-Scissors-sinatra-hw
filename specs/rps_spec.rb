require 'minitest/autorun'
require_relative '../models/rps.rb'

class TestRPS < Minitest::Test

def test_check__player1_win_with_rock
  assert_equal('Player 1 wins with rock!', RPSGame.check_win('rock', 'scissors'))
end

def test_check__player2_win_with_rock
  assert_equal('Player 2 wins with rock!', RPSGame.check_win('scissors', 'rock'))
end

def test_check__player1_win_with_scissors
  assert_equal('Player 1 wins with scissors!', RPSGame.check_win('scissors', 'paper'))
end

def test_check__player2_win_with_scissors
  assert_equal('Player 2 wins with scissors!', RPSGame.check_win('paper', 'scissors'))
end

def test_check__player1_win_with_paper
  assert_equal('Player 1 wins with paper!', RPSGame.check_win('paper', 'rock'))
end

def test_check__player2_win_with_paper
  assert_equal('Player 2 wins with paper!', RPSGame.check_win('rock', 'paper'))
end


def test_check__invalid_input
  assert_equal( "uh oh! Looks like you didn't enter valid inputs!", RPSGame.check_win('not scissors', 'paper'))
end






end
