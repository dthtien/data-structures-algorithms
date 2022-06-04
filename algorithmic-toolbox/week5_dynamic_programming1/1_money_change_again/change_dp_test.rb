#!/usr/bin/env ruby
# by dthtien
require_relative './change_dp'
require 'test/unit'

class ChangeDp < Test::Unit::TestCase
  def test_change
    assert_equal(2, change(2))
    assert_equal(9, change(34))
    assert_equal(1, change(4))
  end
end
