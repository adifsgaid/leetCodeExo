def merge_sort_linked_list(l1, l2)
  return l1 if l2.nil?
  return l2 if l1.nil?

  l1, l2 = l2, l1 if l1.val? > l2.val?

  l1.next = merge_sort_linked_list(l1.next, l2)
  l1
end

def merge_Sort(l1, l2)
  return l1 || l2 unless l1 && l2

  if l2.val > l1.val
    l1.next = merge_two_lists(l1.next, l2)
    l1
  elsif l2.next = merge_two_lists(l1, l2.next)
    l2
  end
end
