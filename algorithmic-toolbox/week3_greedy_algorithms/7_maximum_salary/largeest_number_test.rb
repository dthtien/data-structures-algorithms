#!/usr/bin/env ruby
# by dthtien
require_relative './largest_number'
require 'test/unit'

class CoveringSegments < Test::Unit::TestCase
  def test_simple
    assert_equal(largest_number(%w[21 2]), '221')
    assert_equal(largest_number(%w[9 4 6 1 9]), '99641')
    assert_equal(largest_number(%w[23 39 92]), '923923')
    data = %w[2 8 2 3 6 4 1 1 10 6 3 3 6 1 3 8 4 6 1 10 8 4 10 4 1 3 2 3 2 6 1 5 2 9 8 5 10 8 7 9 6 4 2 6 3 8 8 9 8 2 9 10 3 10 7 5 7 1 7 5 1 4 7 6 1 10 5 4 8 4 2 7 8 1 1 7 4 1 1 9 8 6 5 9 9 3 7 6 3 10 8 10 7 2 5 1 1 9 9 5]
    expected = '9999999998888888888887777777776666666666555555554444444443333333333222222222111111111111111101010101010101010'
    assert_equal(largest_number(data), expected)

  end
end
