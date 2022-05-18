#!/usr/bin/env ruby
# by dthtien

def optimal_summands(n)
  summands = []
  m = 1

  while n > 2 * m
    summands << m
    n -= m
    m += 1
  end

  summands << n

  summands
end

if __FILE__ == $0
  n = gets.to_i
  summands = optimal_summands(n)
  puts summands.size
  puts summands.join(' ')
end
