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

