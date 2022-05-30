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
  coordinates = x.zip(y)
  coordinates = coordinates.sort_by { |coordinate| coordinate.first }

  smallest_distance(coordinates)
end

def smallest_distance(coordinates)
  n = coordinates.size
  return brute_force(coordinates.map(&:first), coordinates.map(&:last)) if n <= 3

  mid = n / 2

  dl = smallest_distance(coordinates[0..mid - 1])
  dr = smallest_distance(coordinates[mid..-1])
  d = min(dl, dr)

  mid_coordinates = coordinates.map do |coordinate|
    next unless (coordinates[mid].first - coordinate.first).abs < d

    coordinate
  end.compact

  check_mid(mid_coordinates, d)
end

def check_mid(coordinates, d)
  min_dist = d
  n = coordinates.size

  coordinates = coordinates.sort_by { |c| c.last }
  coordinates.each_with_index do |coordinate, idx|
    coordinates[idx + 1..-1].each_with_index do |coordinate2, i|
      dist = distance(
        [coordinate.first, coordinate2.first],
        [coordinate.last, coordinate2.last]
      )
      min_dist = dist if dist < min_dist
    end
  end

  min_dist
end

def brute_force(x, y)
  coordinates = x.zip(y)
  min_dist = 10**18

  coordinates.each_with_index do |coordinate, idx|
    coordinates[idx + 1..-1].each_with_index do |coordinate2, idx2|
      q = coordinate2
      dist = distance(
        [coordinate.first, coordinate2.first],
        [coordinate.last, coordinate2.last]
      )
      min_dist = dist if dist < min_dist
    end
  end

  min_dist
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
