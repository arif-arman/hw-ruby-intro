# author: Arif, UIN: 128001831

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.empty?
    return 0
  else
    arr.max(2).reduce(:+)
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  sz = arr.size
  if sz <= 1
    return false 
  end 
  $i = 0
  arr.combination(2).any? { |a, b| a + b == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty?
    return false
  end 
  unless (s[0] >= 'a' && s[0] <= 'z') || (s[0] >='A' && s[0] <= 'Z')
    return false
  else 
    if ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'].include? s[0]
      return false 
    else 
      return true 
    end
  end
  
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s == "0"
    return true 
  end 
  /^[10]*00$/.match(s) != nil
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn, @price = isbn, price
  end
  
  def price_as_string
    sprintf("$%2.2f", @price)
  end 
end
