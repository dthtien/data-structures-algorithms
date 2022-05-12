#!/usr/bin/env ruby
# by Andronik Ordian

def fib_last_digit(n)
  a = 0
  b = 1
  n.times { a, b = b % 10, (a + b) % 10 }

  a
end

if __FILE__ == $0
  n = gets.to_i
  puts "#{fib_last_digit(n)}"
end
