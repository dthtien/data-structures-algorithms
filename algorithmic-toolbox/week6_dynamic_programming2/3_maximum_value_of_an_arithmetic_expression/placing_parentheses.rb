#!/usr/bin/env ruby
# by Andronik Ordian

NUM_MAX = (2**(0.size * 8 - 2) - 1)
NUM_MIN = -(2**(0.size * 8 - 2))

def evaluate(a, b, op)

  case op
  when '+'
    a + b
  when '-'
    a - b
  when '*'
    a * b
  end
end

def min_and_max(ml, m, i, j, operators)
  min_value = NUM_MAX
  max_value = NUM_MIN
  (i...j).each do |k|
    a = evaluate(ml[i][k], ml[k + 1][j], operators[k])
    b = evaluate(ml[i][k], m[k + 1][j], operators[k])
    c = evaluate(m[i][k], ml[k + 1][j], operators[k])
    d = evaluate(m[i][k], m[k + 1][j], operators[k])
    min_value = [min_value, a, b, c, d].min
    max_value = [max_value, a, b, c, d].max
  end

  [min_value, max_value]
end

def maximum_value(numbers, operations)
  n = numbers.size
  m = Array.new(n) { Array.new(n) }
  ml = Array.new(n) { Array.new(n) }

  n.times do |i|
    m[i][i] = numbers[i]
    ml[i][i] = numbers[i]
  end
  puts m.inspect
  puts ml.inspect

  (1...n).each do |s|
    (0...n - s).each do |i|
      j = i + s
      m[i][j], ml[i][j] = min_and_max(ml, m, i, j, operations)
    end
  end

  ml[0][n - 1]
end

def parse_input(input)
  numbers = []
  operations = []

  input.each do |i|
    if ['+', '-', '*'].include?(i)
      operations << i
    else
      numbers << i.to_i
    end
  end

  [numbers, operations]
end

if __FILE__ == $0
  s = gets.chomp.bytes.to_a
  puts maximum_value(*parse_input(s))
end
