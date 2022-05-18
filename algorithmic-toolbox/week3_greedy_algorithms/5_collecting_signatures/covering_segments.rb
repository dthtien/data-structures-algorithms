#!/usr/bin/env ruby
# by Andronik Ordian

Segment = Struct.new('Segment', :start, :end)

def optimal_points(segments)
  points = []
  return points if segments.empty?

  segments = segments.sort { |first, second| first.end <=> second.end }
  size = segments.size
  size.times do |i|
    last_seg_num = segments[i].end
    next if !i.zero? && (segments[i].start.zero? || last_seg_num.zero?)

    points << last_seg_num
    segments[i + 1..].each do |x|
      next if x.start > last_seg_num || last_seg_num > x.end

      x.start = 0
      x.end = 0
    end

    segments[i].start = 0
    segments[i].end = 0
  end
  points
end

if __FILE__ == $0
  data = STDIN.read.split.map(&:to_i)
  n = data[0]
  segments = data[1..2 * n].each_slice(2).to_a.map { |e| Segment.new(e[0], e[1]) }
  points = optimal_points(segments)
  puts points.size.to_s
  puts points.join(' ')
end
