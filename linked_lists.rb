# frozen_string_literal: true

# Holds the linked lsit and methods to use on the linked list.
# Also initializes with a dummy head node.
class LinkedList
  def initialize
    @head = Node.new(nil)
  end

  def append(value)
    current_node = Node.new(value)
    tmp = @head
    while tmp.next != nil
      tmp = tmp.next
    end
    tmp.next = current_node
  end

  def prepend(value)
    current_node = Node.new(value)
    tmp = @head.next
    tmp2 = @head
    current_node.next = tmp
    tmp2.next = current_node
  end

  def contains?(value)
    tmp = @head
    while tmp.next != nil && tmp.value != value
      tmp = tmp.next
    end
    if tmp.value == value
      true
    else
      false 
    end
  end

  def size_of_list
    size = 1
    tmp = @head
    while tmp.next != nil
      tmp = tmp.next
      size += 1
    end
    size
  end

  def to_s
    tmp = @head.next
    print " head -> "
    while tmp != nil
      print "( #{tmp.value} ) -> "
      tmp = tmp.next
    end
    print " nil "
  end

  def head
    @head
  end

  def tail
    tmp = @head
    while tmp.next != nil
      tmp = tmp.next
    end
    tmp
  end

  def at(index)
    i = 0
    tmp = @head
    while i < index
      tmp = tmp.next
      i += 1
    end
    tmp
  end

  def pop
    tmp = @head
    while tmp.next != nil
      tmp_previous = tmp
      tmp = tmp.next
    end
    tmp_previous.next = nil
    end

  def find(value)
    tmp = @head
    i = 0
    while value != tmp.value && tmp.next != nil
      tmp = tmp.next
      i += 1
    end
    if value == tmp.value
      return i
    else
      return "Value not found"
    end
  end
end

# Properties for a node to be added to the linked list
class Node
  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end
end

