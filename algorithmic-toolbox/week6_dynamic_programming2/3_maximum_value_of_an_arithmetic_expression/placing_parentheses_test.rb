#!/usr/bin/env ruby
# by dthtien
require_relative './placing_parentheses'
require 'test/unit'

class PlacingParenttheses < Test::Unit::TestCase
  def test_partition
    text = '5-8+7*4-8+9'.split('')
    assert_equal(200, maximum_value(*parse_input(text)))
  end

  def test_partition2
    text = '1+2-3*4-5'.split('')
    assert_equal(6, maximum_value(*parse_input(text)))
  end
end
