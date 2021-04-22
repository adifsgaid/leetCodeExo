def fibo_tabu(n)
  table = Array.new(n + 1).fill(0);
  table[1]= 1
  i = 0
   while i < n do
    table[i + 1] += table[i]
    table[i + 2] += table[i]
   end
 end
  table[n]
end

fibo_tabu(4)


