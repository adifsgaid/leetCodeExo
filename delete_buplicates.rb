def delete_duplicates_linkedlist(head)
  return headt if head.nil? || head.next.nil?

  current = head

  until current.next.nil?
    if current.val == current.next.val?
      current.next == current.next.next
    else
      current = current.next
    end
  end
  head
end

head = [2, 2, 3, 3, 4, 5]
delete_duplicates_linkedlist(head)
