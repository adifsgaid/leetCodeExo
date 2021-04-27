def how_sum_tabulation(target, numbers)
  table = Array.new(target + 1).fill(nil)
  table[0] = []
  i = 0
 until i < target
    i+=1
    if table[i] != nil
      numbers.each do |num|
        table[i + num] = [*table[i], num]
        end
    end
  end
  return table[target]
end

how_sum_tabulation(9, [4,3])
