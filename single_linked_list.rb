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
      return "list is empty"
    end
  end

  def content
    current_node = @head
    return "list is empty" if current_node == nil
    while(current_node != nil)
      print "#{current_node.value}->"
      current_node = current_node.next_node
    end
    print "\n"
  end

  def clear
    @head = @tail = nil
  end

  def reverse
    previous = nil
    current_node = @head
    while(current_node != nil)
      next_node = current_node.next_node
      current_node.next_node = previous
      previous = current_node
      current_node = next_node
    end
    @head = previous
  end

  def delete(value)
    current_node = @head
    temp = nil
    previous = nil
    while(current_node != nil)
      if current_node.value == value
        temp = current_node.next_node
        previous.next_node = temp
        return true
      else
        previous = current_node
        current_node = current_node.next_node
      end
    end
    return false
  end

  def delete_at(position)
    current_node = @head
    previous = nil
    if pos == 0
      temp = @head.next_node
      @head = temp
    else
      (0...position).each do
        return false if current_node.nil?
        previous = current_node
        current_node = current_node.next_node
      end
      previous.next_node = current_node.next_node
    end
    return true
  end
end
