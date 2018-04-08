require_realtive('linked_list.rb')
class Stack
  attr_reader :list

  def initialize
    @list = SingleLinkedList.new
  end

  def push(value)
    list.prepend(value)
  end

  def pop
    list.shift
  end

  def content
    list.content
  end
end
