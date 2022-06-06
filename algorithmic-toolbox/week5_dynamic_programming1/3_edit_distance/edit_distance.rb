#!/usr/bin/env ruby
# by Andronik Ordian

def edit_distance(a, b)
  n = a.length + 1
  m = b.length + 1

  d = Array.new(n, 0) { Array.new(m, 0) }
  n.times { |i| d[i][0] = i }
  m.times { |j| d[0][j] = j }

  (1...m).each do |j|
    (1...n).each do |i|
      insertion = d[i][j - 1] + 1
      deletion = d[i - 1][j] + 1
      mismatch = d[i - 1][j - 1] + 1
      match = d[i - 1][j - 1]

      d[i][j] = a[i - 1] == b[j - 1] ? [insertion, deletion, match].min : [insertion, deletion, mismatch].min
    end
  end

  d[n - 1][m - 1]
end


if __FILE__ == $0
  a, b = gets, gets
  puts edit_distance(a, b)
end
