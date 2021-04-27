def fibo_tabu(n)
  table = Array.new(n + 1).fill(0)
  table[n] = 0
  table[1] = 1

  for i in (2...n + 1)
    table[i] = table[i - 1] + table[i - 2]
  end

  return table[n]
end

fibo_tabu(304)


