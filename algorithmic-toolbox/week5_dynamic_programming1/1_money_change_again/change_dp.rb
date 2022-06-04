#!/usr/bin/env ruby
# by dthtien
DENOMINATIONS = [1, 3, 4].freeze

def change(n)
  min_coins = [0] + [Float::INFINITY] * n

  (1..n).each do |i|
    DENOMINATIONS.each do |coin|
      next if i < coin

      min_coins[i] = [min_coins[i], min_coins[i - coin] + 1].min
    end
  end

  min_coins[n]
end

if __FILE__ == $0
  n = gets.to_i
  puts change(n)
end
