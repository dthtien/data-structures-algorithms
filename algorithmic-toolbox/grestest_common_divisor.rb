def slow_gcd(num1, num2)
  max = 0
  (1..(num1 + num2)).each do |n|
    max = n if (num1 % n).zero? && (num2 % n).zero?
  end

  max
end

# if b = 0: return a
# a′ ← the remainder when a is divided by b
# return EuclidGCD(b,a′)
def gcd(num1, num2)
  num2.zero? ? num1 : gcd(num2, num1 % num2)
end

puts gcd(3_918_848, 1_653_264)
