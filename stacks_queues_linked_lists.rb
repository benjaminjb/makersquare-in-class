# Linked list is made of nodes; keeps track of opening and ending so that we can use that
class LinkedList
  def initialize
    @head = nil
    @count = 0
    @tail = nil
  end

  def add(node)
    @head ||= node
    @count += 1
    @tail.next = node if @tail
    @tail = node
  end

  def remove_front
    temp = @head
    head = @head.next
    return temp
  end

  def remove_back
    @count -= 1
    raise error if @count < 0
    counter = 1
    this_node = @head

    while counter <= @count
      this_node = this_node.next
      counter += 1
    end
    solution = this_node.next
    @tail = this_node
    this_node.next = nil
    solution
  end

  def remove_particular_node(node)
    previous_node = @head
    this_node = @head.next
    until node.value == this_node

      
    end
    @count -= 1
  end


  def add_into(node)
  end

  def length

  end

end

class Node
  attr_accessor :next, :value

  def initialize (value)
    @value = value
    @next
  end
end

class QueueArray

  def initialize
    @stack = []
  end

  def push(val)
    @stack.push(val)
  end

  def pop
    @stack.shift
  end

  def peek
    @stack[0]
  end

end

class QueueLL

  def initialize
    @head = nil
    @tail = nil
  end

  def push(val)
    node = Node.new(val)
    @head ||= node
    @tail.next = node if @tail
    @tail = node
  end

  def pop
    raise error if @head.nil?
    solution = @head
    @head = @head.next
    solution.next = nil
    solution.value
  end

  def peek
    @head.value if @head
  end

end

class StackArray
  
  def initialize
    @stack = []
  end

  def push(val)
    @stack.push(val)
  end

  def pop
    @stack.pop
  end

  def peek
    @stack[@stack.length-1]
  end

end

class StackLL

  def initialize
    @head = nil
    @count = 0 # or make things simple and make a doubly linked list
    @tail = nil
  end

  def push(val)
    node = Node.new(val)
    @head ||= node
    @count += 1
    @tail.next = node if @tail
    @tail = node
  end

  def pop
    @count -= 1
    raise error if @count < 0
    counter = 1
    this_node = @head

    while counter <= @count
      this_node = this_node.next
      counter += 1
    end
    solution = this_node.next
    @tail = this_node
    this_node.next = nil
    solution
  end

  def peek
    @tail.value if @tail
  end

end

#given a linked list with head, find the middle, only touching once

def find_middle
  middle = @head
  while @head.next.next
    middle = middle.next
  end
  middle
end