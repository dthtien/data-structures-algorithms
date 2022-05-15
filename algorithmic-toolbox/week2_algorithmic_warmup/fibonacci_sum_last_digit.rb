#!/usr/bin/env ruby
# by dthtien
def number_length(m)
  res = []
  loop do
    res = [0, 1] if res.empty?
    size = res.size

    res << (res[size - 1] + res[size - 2]) % m
    break if res[res.size - 1] == 1 && res[res.size - 2].zero?
  end

  res.size - 2
end

def fib(n)
  return n if n <= 1

  a = 0
  b = 1
  n.times { a, b = b, a + b }

  a
end

def fib_huge(n, m)
  fib(n % number_length(m)) % m
end

def fib_sum_last_digit(n)
  (fib_huge((n + 2) % 60, 10) - 1) % 10
end

if __FILE__ == $0
  n = gets.to_i
  puts fib_sum_last_digit(n).to_s
end
