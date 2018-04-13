def depth_first_search(value, tree)
  stack = [tree]
  visited_nodes = [tree]

  while !stack.empty?
    current_node = stack.last

    if current_node.value == value
      return current_node
    elsif !current_node.left_node.nil? && !visited_nodes.include?(current_node.left_node)
      if current_node.left_node.value == value
        return current_node.left_node
      else
        visited_nodes << current_node.left_node
        stack << current_node.left_node
      end
    elsif !current_node.right_node.nil? && !visited_nodes.include?(current_node.right_node)
      if current_node.right_node.value == value
        return right_node
      else
        visited_nodes << current_node.right_node
        stack << current_node.right_node
      end
    else
      stack.pop
    end
  end
  return nil
end
