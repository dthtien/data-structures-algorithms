#!/usr/bin/env ruby
# by dthtien

def binary_search(x, a)
  low = 0
  high = a.length - 1
  while low <= high
    mid = (low + high) / 2
    return mid if a[mid] == x && (mid.zero? || a[mid - 1] != x)

    x <= a[mid] ? high = mid - 1 : low = mid + 1
  end

  -1
end

if __FILE__ == $0
  data = STDIN.read.split.map(&:to_i)
  n = data[0]
  a = data[1..n]
  m = data[n + 1]
  data[n + 2, m].each { |b| print("#{binary_search(b, a)} ") }
end
