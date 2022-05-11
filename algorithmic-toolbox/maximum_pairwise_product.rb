#!/usr/bin/env ruby
# by dthtien
def max_num_with_index(array, first_max_index = nil)
  max_index = 0
  max_num = 0
  array.each_with_index do |num, index|
    if num > max_num && (first_max_index != index)
      max_num = num
      max_index = index
    end
  end

  return [max_index, max_num]
end

def max_pairwise_product(a)
  max_index, max_num = max_num_with_index(a)
  second_index, second_num = max_num_with_index(a, max_index)

  max_num * second_num
end

if __FILE__ == $0
  data = STDIN.read.split().map(&:to_i)
  n = data[0]
  a = data[1..n]
  puts "#{max_pairwise_product(a)}"
end
