#!/usr/bin/env ruby

def gcd(num1, num2)
  num2.zero? ? num1 : gcd(num2, num1 % num2)
end

def lcm(a, b)
  # Calculate the lowest common multiple of 2 int's: a, b using `gcd()`.
  a * b / gcd(a, b)
end

if __FILE__ == $0
  a, b = gets.split().map(&:to_i)
  puts lcm(a, b).to_s
end
