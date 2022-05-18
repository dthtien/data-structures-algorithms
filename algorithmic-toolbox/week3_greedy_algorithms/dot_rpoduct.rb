#!/usr/bin/env ruby
# by dthtien

def max_dot_product(a, b)
  a = a.sort
  b = b.sort
  total = 0
  a.each_with_index do |num, i|
    total += num * b[i]
  end

  res
end

if __FILE__ == $0
  data = STDIN.read.split.map(&:to_i)
  n = data[0]
  a = data[1..n]
  b = data[n + 1..2 * n]

  puts min_dot_product(a, b).to_s
end
