#!/usr/bin/env ruby
# by dthtien

def get_change(n)
  (n / 10) + (n % 10) / 5 + n % 5
end

if __FILE__ == $0
  n = gets.to_i
  puts get_change(n).to_s
end
