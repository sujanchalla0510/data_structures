require_realtive('linked_list.rb')
class Queue
  attr_reader :list

  def initialize
    @list = SingleLinkedList.new
  end

  def enqueue(value)
    list.append(value)
  end

  def dequeue
    list.shift
  end

  def content
    list.content
  end
end
