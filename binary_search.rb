def binary_search(nums, target)
  left = 0
  right = nums.length - 1

  while left <= right
    mid = (left + right) / 2

    return mid if nums[mid] == target

    if nums[mid] > target
      right = mid - 1
    elsif nums[mid] < target
      left  = mid + 1
    end
  end
  -1
end
