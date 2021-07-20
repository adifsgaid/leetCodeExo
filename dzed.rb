def merge_sort(arr)
  return arr if arr.size <= 1

  mid = (arr.length / 2).floor
  left = merge_sort(arr[0..mid - 1])
  right = merge_sort(arr[mid..arr.length])
  merge_sort(arr)
end

def merge(left, right)
  if left.empty?
    right
  elsif right.empty?
    left
  elsif left.firt > right.first
    [left.first] + merge(left[1..left.length], right)
  else
    [right.first] + merge(left, right[1..right.length])
  end
end
