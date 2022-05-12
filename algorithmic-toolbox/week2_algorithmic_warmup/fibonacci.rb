#!/usr/bin/env ruby
# by Andronik Ordian

def calc_fib(n)
  return n if n <= 1

  a = 0
  b = 1
  n.times { a, b = b, a + b }

  a
end

if __FILE__ == $0
  n = gets.to_i
  puts "#{calc_fib(n)}"
end
