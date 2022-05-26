#!/usr/bin/env ruby
# by dthtien
require_relative './inversions'
require 'test/unit'

class Inversions < Test::Unit::TestCase
  def test_sorting
    a = [2, 3, 9, 2, 9]
    assert_equal(2, get_number_of_inversions(a))
  end
end
