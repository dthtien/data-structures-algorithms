#!/usr/bin/env ruby
# by Andronik Ordian

def minimum_operations(n)
  num_operations = [0, 0] + Array.new(n, Float::INFINITY)

  (2..n + 1).each do |i|
    temp1 = num_operations[i - 1] + 1
    temp2 = Float::INFINITY
    temp3 = Float::INFINITY
    temp2 = num_operations[i / 2] + 1 if i.even?
    temp3 = num_operations[i / 3] + 1 if (i % 3).zero?

    num_operations[i] = [temp1, temp2, temp3].min
  end
  nums = [n]
  while n != 0
    if (n % 3).zero? && num_operations[n] - 1 == num_operations[n / 3]
      nums += [n / 3]
      n /= 3
    elsif n.even? && num_operations[n] - 1 == num_operations[n / 2]
      nums += [n / 2]
      n /= 2
    else
      nums += [n - 1]
      n -= 1
    end
  end

  nums[0...-1].reverse
end

if __FILE__ == $0
  n = gets.to_i
  answer = minimum_operations(n)
  puts answer.length - 1
  puts answer.join(' ')
end
