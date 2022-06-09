#!/usr/bin/env ruby
# by Andronik Ordian

def optimal_weight(w, weights)
  # write your code here
  total_weight = weights.sum
  return total_weight if total_weight <= w

  n = weights.size
  available_weights = [0]
  (1...w).each do |num|
    available_weights << num
    (1...n).each do |i|
      next if weights[i] > num

      val = available_weights[num - weights[i]] + available_weights[i]
      available_weights[num] = [available_weights[num], val].max
    end
  end

  available_weights[w - 1]
end

if __FILE__ == $0
  w, _, *weights = STDIN.read.split.map(&:to_i)
  puts optimal_weight(w, weights)
end
