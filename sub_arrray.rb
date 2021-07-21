def sub_array(nums)
  max_sub = nums[0]
  sub = nums[0]

  nums[1..-1].each do |num|
    sub = [num, num + sub].max
    max_sub = sub if sub > max_sub
  end
  max_sub
end

# Dynamic programming using tabulation 

ef sub_array_tabu(nums)
  @cache = [nums[0]]

  nums[1..-1].each do |num|
    @cache[num] = [nums[num], nums[num] + @cache[num - 1]].max
  end
  @cache.max
end

# Dynamic programmin using memo

def sub_array_memo(nums)
	@cache = []
	max_sum(nums, nums.length)
	@cache.max
end

def max_sum(nums, i)
	return @cache[i] = nums[0]  if  i == 0	
	return nums if i == nums.length

	@cache[i] = [(nums[i] + max_sum(nums, i-1)), nums[i]].max
end

# _______________________________________________________________________
