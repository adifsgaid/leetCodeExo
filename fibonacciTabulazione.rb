def fibo_tabu(n)
  @table = Array.new(n + 1).fill(0);
  @table[1]=1
  return @table
end
fibo_tabu(4)

