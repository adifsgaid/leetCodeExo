# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
 search = {}

 nums.each_with_index do |num, index|
  return [search[target - num], index] unless search[target - num].nil?
  search[num] = index
  end
  search
end
nums = [2,7,11,15], target = 9



def two_sum(target, nums)

  nums.each_with_index do |num, index|
      current = target - num
      return nil if current.nil?
      result = two_sum(current, nums)
      result = index
  end
  result
end
two_sum(9,[2,7,11,15])
