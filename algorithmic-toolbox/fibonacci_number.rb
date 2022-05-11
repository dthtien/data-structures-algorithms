def slow_fib(n)
  n <= 1 ? n : slow_fib(n - 1) + slow_fib(n - 2)
end

# create an array F[0...n] F[0] ← 0
# F[1] ← 1
# for i from 2 to n:
# F [i ] ← F [i − 1] + F [i − 2] return F[n]

def fib(n)
  a = 0
  b = 1

  n.times do
    a, b = b, a + b
  end

  a
end

puts fib(1000)
