def can_sum_tabulation(target, numbers)
  return true if target  == 0

  table = Array.new(target + 1).fill(false)
  table[0]= true
  i = 0

  while i <= target do
    i += 1
    if table[i] == true
      numbers.each do |num|
        table[i + num] = true
      end
    end
   end
  end
  return table[target]
end


can_sum_tabulation(7,[2,3])
