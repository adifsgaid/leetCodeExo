def remove_duplicates(nums)
    return 0 if nums == 0

nums.length.times do |i|
    if nums[i] == num[i.next]
        nums[i] = nil
    else
        next
        end
    end
    result = nums.delete(nil)
    return result
end