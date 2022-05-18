#!/usr/bin/env ruby
# by Andronik Ordian

def largest_number(a)
  a.sort do |first, second|
    Integer("#{second}#{first}", 10) - Integer("#{first}#{second}", 10)
  end.join
end

if __FILE__ == $0
  a = STDIN.read.split.drop(1)
  puts largest_number(a)
end
