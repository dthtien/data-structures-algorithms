#!/usr/bin/env ruby
# by dthtien
require_relative './primitive_calculator'
require 'test/unit'

class PrimitiveCalculator < Test::Unit::TestCase
  def test_change
    answer = minimum_operations(1)
    assert_equal([1], answer)
  end

  def test_change2
    answer = minimum_operations(5)
    assert_equal([1, 2, 4, 5], answer)
  end

  def test_change3
    answer = minimum_operations(96_234)
    assert_equal(
      %w[1 3 9 10 11 22 66 198 594 1782 5346 16038 16039 32078 96234].map(&:to_i),
      answer
    )
  end
end
