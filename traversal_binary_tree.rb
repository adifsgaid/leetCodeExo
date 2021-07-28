def	traversal_tree(root)
  stack = []
  current = root
  @answear = []

  while stack.any? || !current.nil?
    if !current.nil?
      stack.push(current)
      current = current.left
    else
      popped = stack.pop
      @answear.push(popped.val)
      current = popped.right
    end
  end
  @answear
end

traversal_tree([1, nil, 2])
