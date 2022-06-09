#!/usr/bin/env ruby
# by dthtien
require_relative './knapsack'
require 'test/unit'

class Knapsack < Test::Unit::TestCase
  def test_optimal_weight
    text = %{
      10 3
      1 4 8
    }
    assert_equal(9, optimal_weight(*parse_input(text)))
  end

  def test_optimal_weight2
    text = %{
      20 4
      5 7 12 18
    }

    assert_equal(19, optimal_weight(*parse_input(text)))
  end

  private

  def parse_input(text)
    w, _, *weights = text.split.map(&:to_i)
    [w, weights]
  end
end
