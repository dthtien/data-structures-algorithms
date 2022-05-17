#!/usr/bin/env ruby
# by dthtien

def compute_min_refills(distance, tank, stops)
  prev = 0
  refills = 0
  s = 0
  stops << distance

  while s < stops.size
    cur = tank
    while cur >= 0 && s < stops.size
      cur += prev - stops[s]
      if cur >= 0
        prev = stops[s]
        s += 1
      elsif stops[s] - prev > tank
        return -1
      else
        refills += 1
      end
    end
  end

  refills
end

if __FILE__ == $0
  data = STDIN.read.split.map(&:to_i)

  d, m, _, *stops = data
  puts compute_min_refills(d, m, stops).to_s
end
