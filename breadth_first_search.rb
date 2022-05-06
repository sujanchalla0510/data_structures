def breadth_first_search(value, tree)
  queue = [tree]
  visited = [tree]

  while !queue.empty? 
    current_node = queue.shift
    visited_nodes << current

    if current_node.value == value
      return current_node
    end

    unless current_node.left_node.nil? && visited_nodes.include?(current_node.left_node)
      if left_node.value == value
        return current_node.left_node
      else
        visited_nodes << current_node.left_node
        queue << current_node.left_node
      end
    end

    unless current_node.right_node.nil? && visited_nodes.include?(current_node.right_node)
      if right_node.value == value
        return current_node.right_node
      else
        visited_nodes << current_node.right_node
        queue << current_node.right_node
      end
    end
  end
  return nil
end

def max_depth(root)
  return 0 if root.nil?
  queue = [root]
  depth = 0
  while !queue.empty?
    for i in 0..queue.length - 1
      node = queue.shift
      queue.push(node.left) if node.left
      queue.push(node.right) if node.right
    end
    depth += 1
  end
  depth
end

def bfs(node)
  queue = []
  queue.push(node)
  while(queue.size != 0)
    node = queue.shift
    p node.val
    children = [node.left, node.right].compact
    children.each do |child|
      queue.push(child)
    end
  end
end

