# Fibonacci using MEMOIZATION && RECURSION
def fibonacci(n, result = {})
return n if n <= 2
return result[n] if result.include? (n)
result[n] = fibonacci(n - 1, result) + fibonacci(n - 2, result)
return result[n]
end

# Fibonacci using RECURSION
def fibonacci(n)
  return n if n <= 2
  fibonacci(n- 1) + fibonacci(n- 2)
end

# Fibonacci using RECURSION && MEMOIZATION
# Fibonacci function to find the number spot
def fibonacci(n, memo={})
return memo[n] if memo.include?(n)
  if n >= 3
    memo[n] = fibonacci(n- 1, memo) + fibonacci(n- 2, memo)
  else
    return 1
  end
end
