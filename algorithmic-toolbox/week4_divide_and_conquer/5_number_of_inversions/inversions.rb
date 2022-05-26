#!/usr/bin/env ruby
# by dthtien

def merge(a, b, count)
  res = []
  i = j = 0
  while i < a.size && j < b.size
    if a[i] <= b[j]
      res << a[i]
      i += 1
    else
      res << b[j]
      count[0] += a.size - i
      j += 1
    end
  end

  res += a[i..-1]
  res += b[j..-1]

  res
end

def merge_sort(a, count)
  return a if a.size <= 1

  mid = a.size / 2
  left = merge_sort(a[0...mid], count)
  right = merge_sort(a[mid...a.size], count)

  merge(left, right, count)
end

def get_number_of_inversions(a)
  count = [0]
  merge_sort(a, count)

  count[0]
end

if __FILE__ == $0
  _, *a = STDIN.read.split.map(&:to_i)
  puts get_number_of_inversions(a)
end
