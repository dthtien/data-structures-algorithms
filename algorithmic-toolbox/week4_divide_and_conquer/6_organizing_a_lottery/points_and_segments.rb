#!/usr/bin/env ruby
# by Andronik Ordian

Segment = Struct.new("Segment", :a, :b) do
  def contains?(point)
    a <= point and point <= b
  end
end

def fast_count_segments(segments, points)
  count = {}
  segments_num = 0

  list = segments.map { |s| [[s.a, 'l'], [s.b, 'r']] }.flatten(1)
  list += points.map { |p| [p, 'p'] }
  list.sort!
  list.each do |item|
    case item[1]
    when 'l'
      segments_num += 1
    when 'r'
      segments_num -= 1
    when 'p'
      count[item[0]] = segments_num
    end
  end

  points.map do |x|
    count[x]
  end
end

def naive_count_segments(segments, points)
  points.map { |point| segments.count { |s| s.contains?(point) } }
end

if __FILE__ == $0
  data = STDIN.read.split.map(&:to_i)
  s, _p = data
  segments = data[2..2 * s + 1].each_slice(2).to_a.map { |e| Segment.new(e[0], e[1]) }
  points = data[2 * s + 2..-1]
  # replace naive with fast
  puts fast_count_segments(segments, points).join(' ')
end

