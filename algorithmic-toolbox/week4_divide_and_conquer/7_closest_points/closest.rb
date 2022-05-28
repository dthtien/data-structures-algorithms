#!/usr/bin/env ruby
# by dthtien
OUTPUT_FORMAT = '%.4f'

def min(a, b)
  a < b ? a : b
end

def distance(x, y)
  Math.sqrt((x[0] - x[1])**2 + (y[0] - y[1])**2)
end

def minimum_distance(x, y)
  return distance(x, y) if x.length == 2

  mid = x.length / 2
  x_left = x[0...mid]
  x_right = x[mid..-1]
  y_left = y[0...mid]
  y_right = y[mid..-1]

  dl = minimum_distance(x_left, y_left)
  dr = minimum_distance(x_right, y_right)
  d = min(dl, dr)

  y.each_with_index do |num, idx|
    next if idx < mid

    d = min(d, distance(x[mid], num) + distance(x[mid], y[idx]))
  end

  d
end

if __FILE__ == $0
  data = STDIN.read.split.map(&:to_i)
  n = data.size - 1
  x = (1..n).step(2).map { |i| data[i] }
  y = (2..n).step(2).map { |i| data[i] }
  puts format(
    OUTPUT_FORMAT,
    minimum_distance(x, y)
  )
end
