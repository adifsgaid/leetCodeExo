class TreeNode
  attr_accessor :val, :left, :right
  def initializer(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end

  # First way to do it
  def is_same_tree(p, q)
    return true if !p && !q
    return false if p && !q
    return false if !p && q
    return false if p.val != q.val

    is_same_tree(p.right, q.right) && is_same_tree(p.left, q.left)
  end

  # Second Way to do it
  def is_same_tree2(p, q)
    return true if !p && !q

    return (is_same_tree(p.right, q.right) && is_same_tree(p.left, q.left)) if p && q & p.val != q.val

    false
  end
end
