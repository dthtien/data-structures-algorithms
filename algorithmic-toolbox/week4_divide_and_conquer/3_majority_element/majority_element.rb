#!/usr/bin/env ruby
# by Andronik Ordian

def majority_element?(a)
  hash = Hash.new(0)
  length = a.length

  a.each { |e| hash[e] += 1 }
  hash.any? { |_, v| v > length / 2 }
end

if __FILE__ == $0
  n, *a = STDIN.read.split.map(&:to_i)
  puts (majority_element?(a) ? 1 : 0).to_s
end
