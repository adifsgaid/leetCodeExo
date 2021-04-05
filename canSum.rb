#  Solution using Recursion
def can_sum(target, array)
  return true if target == 0;
  return false if target < 0;

  array.each do |num|
    remainder = target - num
    return true if canSum(remainder, array) == true
  end

  return false
end


# Solution using RECURSION AND MEMOIZATION

def can_sum(target, array, memo={})
  return memo[target] if memo.include? (target)
  return true if target == 0
  return false if target < 0

  array.each do |num|
    remainder = target - num

    if can_sum(remainder, array, memo) == true
      memo[target] = true
    end
  end

  memo[target] = false
end
