#!/usr/bin/env ruby

def gcd(num1, num2)
  num2.zero? ? num1 : gcd(num2, num1 % num2)
end

if __FILE__ == $0
  a, b = gets.split().map(&:to_i)
  puts "#{gcd(a, b)}"
end
