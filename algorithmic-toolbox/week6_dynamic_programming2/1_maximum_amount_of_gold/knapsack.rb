#!/usr/bin/env ruby
# by dthtien

def optimal_weight(w, weights)
  n = weights.size
  res = Array.new(n + 1, 0) { Array.new(w + 1, 0) }
  (n + 1).times do |i|
    (w + 1).times do |j|
      if i.zero? || j.zero?
        res[i][j] = 0
      elsif weights[i - 1] <= j
        res[i][j] = [res[i - 1][j], res[i - 1][j - weights[i - 1]] + weights[i - 1]].max
      else
        res[i][j] = res[i - 1][j]
      end
    end
  end

  res[n][w]
end

if __FILE__ == $0
  w, _, *weights = STDIN.read.split.map(&:to_i)
  puts optimal_weight(w, weights)
end
