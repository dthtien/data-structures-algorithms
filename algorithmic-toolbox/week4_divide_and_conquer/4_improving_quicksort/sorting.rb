#!/usr/bin/env ruby
# by dthtien

def randomized_quick_sort(a)
  return a if a.size < 2

  less = a.select { |x| x < a[0] }
  greater = a.select { |x| x > a[0] }
  equal = a.select { |x| x == a[0] }

  randomized_quick_sort(less) + equal + randomized_quick_sort(greater)
end

if __FILE__ == $0
  n, *a = STDIN.read.split.map(&:to_i)
  randomized_quick_sort(a)
  puts a.join(' ')
end
