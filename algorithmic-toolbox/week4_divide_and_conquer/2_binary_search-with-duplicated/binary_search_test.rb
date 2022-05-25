#!/usr/bin/env ruby
# by dthtien
require_relative './binary_search'
require 'test/unit'

class BinarySearch < Test::Unit::TestCase
  def test_binary_search
    a = [2, 4, 4, 4, 7, 7, 9]
    assert_equal(6, binary_search(9, a))
    assert_equal(1, binary_search(4, a))
    assert_equal(-1, binary_search(5, a))
    assert_equal(0, binary_search(2, a))
  end

  def test_binary_search2
    a = [4, 4, 4, 7, 7, 9, 10]
    assert_equal(5, binary_search(9, a))
    assert_equal(0, binary_search(4, a))
    assert_equal(-1, binary_search(5, a))
    assert_equal(6, binary_search(10, a))
  end
end
