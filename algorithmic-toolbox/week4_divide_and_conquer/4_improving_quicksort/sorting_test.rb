#!/usr/bin/env ruby
# by dthtien
require_relative './sorting'
require 'test/unit'

class Sorting < Test::Unit::TestCase
  def test_sorting
    a = [2, 3, 9, 2, 2]
    assert_equal([2, 2, 2, 3, 9], randomized_quick_sort(a))
  end
end
