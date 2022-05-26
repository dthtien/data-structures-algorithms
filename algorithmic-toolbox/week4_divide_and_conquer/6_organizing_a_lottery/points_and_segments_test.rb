#!/usr/bin/env ruby
# by dthtien
require_relative './points_and_segments'
require 'test/unit'

class PointAndSegments < Test::Unit::TestCase
  def test_sorting
    text = %{
      2 3
      0 5
      7 10
      1 6 11
    }

    segments, points = parse_input text
    assert_equal(naive_count_segments(segments, points), fast_count_segments(segments, points))
  end

  private

  def parse_input(input)
    data = input.split(' ').map(&:to_i)
    s, _p = data
    segments = data[2..2 * s + 1].each_slice(2).to_a.map { |e| Segment.new(e[0], e[1]) }
    points = data[2 * s + 2..-1]

    [segments, points]
  end
end
