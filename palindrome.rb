class Palindrome
  # using ruby reverse method
  def self.check(str)
    str == str.reverse
  end

  # recursive solution to check if palindrome
  def self.check_recursive(str)
    if str.length == 0 || str.length == 1
      true
    else
      str[0] == str[-1] ? palindrome?(str[1..-2]) : false
    end
  end

  # non recursive method
  def self.check_non_recursive(str)
    rev_str = ""
    count = str.length
    while count > 0
      count -= 1
      rev_str += str[count]
    end
    rev_str == str
  end

  # check if integer is a palindrome
  def self.check_number?(num)
    rev_num = 0
    n = num
    while n != 0
      i = n % 10
      rev_num = rev_num * 10 + i
      n /= 10
    end
    rev_num == num
  end
end
