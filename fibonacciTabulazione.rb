def fibo(n)
  return n if n <= 2
  return 0 if n < 0
  fibo(n - 1) + fibo(n - 2)
end

def fibo_memo(n,memo={})
  return n if n <= 2
  return 0 if n < 0
  return memo[n] if memo.include?(n)
  memo[n] = fibo_memo(n - 1, memo) + fibo_memo(n - 2, memo)
  return  memo[n]
end

fibo_memo(4323)
