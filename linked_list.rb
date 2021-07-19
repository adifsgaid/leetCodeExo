class LinkedList
  def initialize
    @head = nil
  end

  def delete_duplicates(value)
    return node if node.nil? || node.next.nil?

    current = node

    until current.next.nil?
      if current.value == current.next.value
        current.next == current.next.next
      else
        current = current.next
      end
    end
    value
  end
end

class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

testa = LinkedList.new

p testa.delete_duplicates([2, 2, 3, 3, 4, 5])
