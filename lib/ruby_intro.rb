# When done, submit this entire file to the autograder.

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
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
