#!/usr/bin/env ruby
# by dthtien
require_relative './lcs2'
require 'test/unit'

class EditDistance < Test::Unit::TestCase
  def test_lcs
    text = %(
      3
      2 7 5
      2
      2 5
    )
    assert_equal(2, lcs2(*parse_input(text)))
  end

  def test_lcs2
    text = %(
      1
      7
      4
      1 2 3 4
    )
    assert_equal(0, lcs2(*parse_input(text)))
  end

  def test_lcs3
    text = %(
      4
      2 7 8 3
      4
      5 2 8 7
    )
    assert_equal(2, lcs2(*parse_input(text)))
  end
end
