#  Solution using Recursion
def canSum(target, array)
  return true if target == 0;
  return false if target < 0;

  array.each do |num|
    remainder = target - num
    return true if canSum(remainder, array) == true
  end
  return false
end
