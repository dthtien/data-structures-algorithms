#!/usr/bin/env ruby
# by dthtien
require_relative './partition3'
require 'test/unit'

class Knapsack < Test::Unit::TestCase
  def test_partition
    text = %(
      4
      3 3 3 3
    )
    puts parse_input(text).inspect
    assert_equal(0, partition3(parse_input(text)))
  end

  def test_partition2
    text = %(
      1
      40
    )

    assert_equal(0, partition3(parse_input(text)))
  end

  def test_partition3
    text = %(
      11
      17 59 34 57 17 23 67 1 18 2 59
    )
    assert_equal(1, partition3(parse_input(text)))
  end

  def test_partition4
    text = %(
      13
      1 2 3 4 5 5 7 7 8 10 12 19 25
    )
    assert_equal(1, partition3(parse_input(text)))
  end

  private

  def parse_input(text)
    _n, *list = text.split.map(&:to_i)
    puts list.inspect
    list
  end
end
