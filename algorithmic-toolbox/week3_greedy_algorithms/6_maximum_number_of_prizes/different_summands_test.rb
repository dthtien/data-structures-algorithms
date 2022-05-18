#!/usr/bin/env ruby
# by dthtien
require_relative './different_summands'
require 'test/unit'

class CoveringSegments < Test::Unit::TestCase
  def test_simple
    assert_equal(optimal_summands(6), [1, 2, 3])
    assert_equal(optimal_summands(8), [1, 2, 5])
    assert_equal(optimal_summands(2), [2])
  end
end
