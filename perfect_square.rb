# finding whether integer is a perfect square using binary search

class PerfectSquare
  def self.find(x)
    return false if !x.is_a?(Integer) || x <= 3
    array = (3..x).to_a
    min = 0
    max = array.length - 1
    while(min <= max - 2)
      mid = ((min+max)/2).floor
      num = array[mid]
      if num*num == x
        return true
      elsif num*num > x
        max = mid
      elsif num*num < x
        min = mid
      end
    end
    return false
  end

  def self.find_recursive_way(x)
    return false if !x.is_a?(Integer) || x <= 3
    array = (3..x).to_a
    search_square(x, array)
  end

  def self.search_square(x, array) 
    min = 0
    max = array.length - 1
    mid = ((min+max)/2).floor
    return false if mid == 0
    num = array[mid]
    if num*num == x
      return true
    elsif num*num > x
      search_square(x, array[min..mid])
    elsif num*num < x
      search_square(x, array[mid..max])
    end
  end
end

PerfectSquare.find(20) # false
PerfectSquare.find_recursive_way(16) # true
PerfectSquare.find(-1) # false
