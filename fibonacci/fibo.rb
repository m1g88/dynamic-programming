# write a function `fibo(n)` that take in a number as an argument.
# The function should retrun the n-th number of the Fibonacci sequence.
#
# The 1st and 2nd number of the sequence is 1.
# To generate the next number of the sequence, we sum the previous two.
#
# n:        1, 2, 3, 4, 5, 6, 7, 8, 9, ..
# fibo(n)   1, 1, 2, 3, 5, 8, 13, 21, 34, ..

def fibo(n)
  return 1 if n <= 2

  fibo(n - 1) + fibo(n - 2)
end

puts fibo(6)
puts fibo(7)
puts fibo(8)

# O^n
# puts fibo(50)

def fibo_memo(n, memo = {})
  return memo[n] if memo.has_key?(n)
  return 1 if n <= 2

  memo[n] = fibo_memo(n - 1, memo) + fibo_memo(n - 2, memo)
  memo[n]
end

puts fibo_memo(6)
puts fibo_memo(7)
puts fibo_memo(8)
puts fibo_memo(50)
