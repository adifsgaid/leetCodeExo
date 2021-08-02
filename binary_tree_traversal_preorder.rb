class TreeNode
  attr_accessor :value, :left, :right

  def initialize(val, left, right)
    @value = val
    @left = left
    @right = right
  end
end

class BinarySearch
  def initialize(val)
    puts 'Initializing with: ' + val.to_s
    @root = TreeNode.new(val, nil, nil)
  end

  def preorder_traversal(node = @root)
    stack = [node]
    answear = []
    return answear if node.nil?

    until stack.empty?
      node = stack.pop
      answear << node.value
      stack << node.right if node.right
      stack << node.left if node.left
    end
    puts answear
  end


  


  def insert(value)
    puts 'Inserting :' + value.to_s
    current_node = @root
    while nil != current_node
      if (value < current_node.value) && current_node.left.nil?
        current_node.left = TreeNode.new(value, nil, nil)
      elsif (value > current_node.value) && current_node.right.nil?
        current_node.right = TreeNode.new(value, nil, nil)
      elsif value < current_node.value
        current_node = current_node.left
      elsif value > current_node.value
        current_node = current_node.right
      else
        return
      end
    end
  end
end

bst = BinarySearch.new(10)
bst.insert(11)
bst.insert(9)
bst.insert(5)
bst.insert(7)
bst.insert(18)
bst.insert(17)
puts 'In-Order Traversal:'
bst.preorder_traversal
