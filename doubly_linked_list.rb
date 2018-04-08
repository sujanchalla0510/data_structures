class Node
  attr_reader :value
  attr_accessor :next_node, :previous_node

  def initialize(value, next_node, previous_node)
    @value = value
    @next_node = next_node
    @previous_node = previous_node
  end
end

class DoublyLinkedList
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
      @head = @tail = Node.new(value, nil, nil)
    else
      new_node = Node.new(value, nil, @tail)
      @tail.next_node = new_node
      @tail = new_node
    end
  end

  def prepend(value)
    if empty?
      @head = @tail = Node.new(value, nil, nil)
    else
      new_node = Node.new(value, @head, nil)
      @head.previous_node = new_node
      @head = new_node
    end
  end

  def shift
    current_node = @head
    if current_node
      @head = @head.next_node
      @head.previous_node = nil
      if @tail.previous_node == current_node
        @tail.previous_node = nil
      end
      current_node.value
    else
      raise "list is empty"
    end
  end

  def content
    current_node = @head
    raise "list is empty" if current_node.blank?
    while  current_node != nil
      p "#{current_node.value}<->"
      current_node = current_node.next_node
    end
    p "\n"
  end
end
