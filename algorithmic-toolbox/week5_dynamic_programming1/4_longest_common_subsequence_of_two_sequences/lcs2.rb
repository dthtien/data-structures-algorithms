#!/usr/bin/env ruby
# by dthtien

def lcs2(a, b)
  hash = Hash.new({})
  n = a.size
  m = b.size

  (1..m).each do |j|
    (1..n).each do |i|
      if a[i - 1] == b[j - 1]
        hash[i][j] = hash[i - 1][j - 1].to_i + 1
      else
        hash[i][j] = [hash[i - 1][j].to_i, hash[i][j - 1].to_i].max
      end
    end
  end

  # a.each_with_index do |x, i|
    # b.each_with_index do |y, j|
      # next hash[i][j] = 1 + hash[i][j].to_i if x == y

      # hash[i][j] = [hash[i - 1][j].to_i, hash[i][j - 1].to_i].max
    # end
  # end
  #
  hash[a.size][b.size]
end

def parse_input(text)
  data = text.split.map(&:to_i)
  n = data.first
  data = data[1..-1]
  a = data[0...n]
  data = data[n..-1]
  m = data.first
  data = data[1..-1]
  b = data[0...m]

  [a, b]
end


if __FILE__ == $0
  text = STDIN.read

  puts lcs2(*parse_input(text))
end
