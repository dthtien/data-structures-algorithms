#!/usr/bin/env ruby
# by dthtien
require_relative './edit_distance'
require 'test/unit'

class EditDistance < Test::Unit::TestCase
  def test_edit_distance
    assert_equal(0, edit_distance('ab', 'ab'))
  end

  def test_edit_distance2
    assert_equal(3, edit_distance('short', 'ports'))
  end

  def test_edit_distance3
    assert_equal(5, edit_distance('editing', 'distance'))
  end
end
