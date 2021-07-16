def binary_search(nums, target)
  left = 0
  right = nums.length - 1

  while left <= right
    mid = (left + right) / 2

    if nums[mid] == target
      return mid
    elsif nums[mid] > target
       right = mid - 1
    elsif nums[mid] < target
      left = mid + 1
    end
  end
  -1
end
search([3, 4, 3, 2, 1], 9)

def search(nums, target)
  left = 0
  right = nums.length - 1
  
  while left <= right 
      mid = (left + right) / 2
      
      if nums[mid] == target
          return mid
      
      elsif nums[mid] < target
          left = mid + 1
      
      elsif nums[mid] > target
          
          right = mid  - 1
      end
  end
  -1
end

search([-1,0,3,5,9,12], 9)