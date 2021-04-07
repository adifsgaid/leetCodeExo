# How Sum Recursion Call

def how_sum(target, array)
  return [] if target == 0
  return nil if target < 0

  array.each do |num|
    remainder = target - num

    ramainderResult = how_sum(remainder, array)

    if ramainderResult != nil
      return [*ramainderResult, num ]
    end

  end

  return nil
end


#  Memoized Solution

def how_sum(target, array, memo={})
  return memo[target] if memo.include? (target)
  return [] if target == 0
  return nil if target < 0


  array.each do |num|
    remainder = target - num
    remainderSolution = can_sum(remainder, array, memo)

    if remainderSolution != nil
      memo[target] = [*remainderSolution, num]
      return memo[target]
    end
  end
  memo[target] = nil
end


