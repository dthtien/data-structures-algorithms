#!/usr/bin/env ruby
# by dthtien
require_relative './majority_element'
require 'test/unit'

class MajorityElement < Test::Unit::TestCase
  def test_majority_element
    a = [2, 3, 9, 2, 2]
    assert_equal(true, majority_element?(a))
  end

  def test_majority_element2
    a = [1, 2, 3, 4, 5]
    assert_equal(false, majority_element?(a))
  end
end
