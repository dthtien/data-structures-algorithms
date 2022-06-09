#!/usr/bin/env ruby
# by dthtien

def partition3(list)
  total = list.sum
  n = list.size

  return 0 if n < 3 || !(total % 3).zero?

  count = 0
  w = total / 3
  d = Array.new(w + 1, 0) { Array.new(n + 1, 0) }
  (1..w).each do |i|
    (1..n).each do |j|
      d[i][j] = d[i][j - 1]
      if list[j - 1] <= i
        temp = d[i - list[j - 1]][j - 1] + list[j - 1]
        d[i][j] = temp if temp > d[i][j]
      end

      count += 1 if d[i][j] == w
    end
  end

  count < 3 ? 0 : 1
end

if __FILE__ == $0
  n, *list = STDIN.read.split.map(&:to_i)
  puts partition3(list)
end
