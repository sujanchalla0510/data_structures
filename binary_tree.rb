class Node
  attr_reader :value
  attr_accessor :left_node, :right_node

  def initialize(value)
    @value = value
    @left_node = nil
    @right_node = nil
  end
end

class BinaryTree
  attr_reader :root_node

  def initialize
    @root_node = nil
  end

  def build_tree(array)
    array.each do |a|
      insert(a)
    end
  end

  def insert(value)
    if root_node.nil?
      @root_node = Node.new(value)
    else
      insert_at_node(@root_node, value)
    end
  end

  def insert_at_node(tree_node, value)
    case value <=> tree_node.value
    when 1
      if tree_node.right_node.nil?
        tree_node.right_node = Node.new(value)
      else
        insert_at_node(tree_node.right_node, value)
      end
    when -1
      if tree_node.left_node.nil?
        tree_node.left_node = Node.new(value)
      else
        insert_at_node(tree_node.left_node, value)
      end
    when 0
      puts "duplicate value found #{value}"
    end
  end

  def search(value)
    return nil if @root_node.nil?
    search_at_node(@root_node, value)
  end

  def search_at_node(tree_node, value)
    case value <=> tree_node.value
    when 1
      search_at_node(tree_node.right_node, value)
    when -1
      search_at_node(tree_node.left_node, value)
    when 0
      return tree_node
    end
  end

  def pre_order_traverse(node)
    return [] if node.nil?
    results = []
    results << node.value
    results.concat pre_order_traverse(node.left_node)
    results.concat pre_order_traverse(node.right_node)
    results
  end

  def in_order_traverse(node)
    return [] if node.nil?
    results = []
    results.concat in_order_traverse(node.left_node)
    results << node.value
    results.concat in_order_traverse(node.right_node)
    results
  end

  def post_order_traverse(node)
    return [] if node.nil?
    results = []
    results.concat post_order_traverse(node.left_node)
    results.concat post_order_traverse(node.right_node)
    results << node.value
    results
  end
end
