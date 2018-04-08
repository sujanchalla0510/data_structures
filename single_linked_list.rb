class Node
  attr_reader :value
  attr_accessor :next_node

  def initialize(value, next_node)
    @value = value
    @next_node = next_node
  end
end

class SingleLinkedList
  attr_reader :head, :tail

  def intitialize
    @head = nil
    @tail = nil
  end

  def empty?
    @head == nil
  end

  def append(value)
    if empty?
      @head = @tail = Node.new(value, nil)
    else
      new_node = Node.new(value, nil)
      @tail.next_node = new_node
      @tail = new_node
    end
  end

  def prepend(value)
    if empty?
      @head = @tail = Node.new(value, nil)
    else
      new_node = Node.new(value, @head)
      @head = new_node
    end
  end

  def shift
    current_node = @head
    if current_node
      @head = @head.next_node
      current_node.value
    else
      raise "list is empty"
    end
  end

  def content
    current_node = @head
    raise "list is empty" if current_node == nil
    while  current_node != nil
      print "#{current_node.value}->"
      current_node = current_node.next_node
    end
    print "\n"
  end
end
