#!/usr/bin/env ruby
# by dthtien
require_relative './binary_search'
require 'test/unit'

class BinarySearch < Test::Unit::TestCase
  def test_binary_search
    a = [1, 2, 3, 4, 5]
    assert_equal(0, binary_search(1, a))
    assert_equal(1, binary_search(2, a))
    assert_equal(2, binary_search(3, a))
    assert_equal(3, binary_search(4, a))
    assert_equal(4, binary_search(5, a))
    assert_equal(-1, binary_search(6, a))
  end

  def test_binary_search2
    a = [1, 5, 8, 12, 13]
    assert_equal(0, binary_search(1, a))
    assert_equal(1, binary_search(5, a))
    assert_equal(2, binary_search(8, a))
    assert_equal(3, binary_search(12, a))
    assert_equal(4, binary_search(13, a))
    assert_equal(-1, binary_search(14, a))
  end
end
