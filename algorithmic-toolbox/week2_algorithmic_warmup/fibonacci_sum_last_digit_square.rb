#!/usr/bin/env ruby
# by dthtien

PISANO_PERIOD_MOD10 = 60

def fib_last_digit(n)
  a = 0
  b = 1
  n.times { a, b = b % 10, (a + b) % 10 }

  a
end

def fib_sum_last_digit_square(n)
  vertical_side = fib_last_digit(n % PISANO_PERIOD_MOD10)
  horizontal_side = fib_last_digit((n + 1) % PISANO_PERIOD_MOD10)

  (vertical_side * horizontal_side) % 10
end

if __FILE__ == $0
  n = gets.to_i
  puts fib_sum_last_digit_square(n).to_s
end
