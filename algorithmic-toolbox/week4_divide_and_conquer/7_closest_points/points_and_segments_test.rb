#!/usr/bin/env ruby
# by dthtien
require_relative './closest'
require 'test/unit'

class Closest < Test::Unit::TestCase
  def test_closest
    text = %(
      2
      0 0
      3 4
    )
    assert_equal(5.0, minimum_distance(*parse_input(text)))
  end

  def test_closest2
    text = %(
      4
      7 7
      1 100
      4 8
      7 7
    )
    assert_equal(0.0, minimum_distance(*parse_input(text)))
  end

  private

  def parse_input(input)
    data = input.split(' ').map(&:to_i)
    n = data.size - 1
    x = (1..n).step(2).map { |i| data[i] }
    y = (2..n).step(2).map { |i| data[i] }
    [x, y]
  end
end
