#!/usr/bin/env ruby
# by dthtien
require_relative './covering_segments'
require 'test/unit'

class CoveringSegments < Test::Unit::TestCase
  def test_simple
    text = %(
      3
      1 3
      2 5
      3 6
    )

    segments = prepare_data(text)
    points = optimal_points(segments)

    assert_equal(points.size, 1)
    assert_equal(points.join(' '), 3.to_s)
  end

  def test_simple2
    text = %(
      4
      4 7
      1 3
      2 5
      5 6
    )

    segments = prepare_data(text)
    points = optimal_points(segments)

    assert_equal(points.size, 2)
    assert_equal(points, [3, 6])
  end

  private

  def prepare_data(text)
    data = text.split.map(&:to_i)
    n = data[0]
    data[1..2 * n].each_slice(2).to_a.map { |e| Segment.new(e[0], e[1]) }
  end
end
