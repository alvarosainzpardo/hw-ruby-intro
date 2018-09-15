# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  result = 0
  arr.each { |x| result += x }
  result
end

def max_2_sum arr
  # YOUR CODE HERE
  return 0 if arr.empty?
  return arr[0] if arr.length == 1
  return arr.max(2).sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.combination(2) { |x, y| return true if x + y == n }
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s =~ /^[a-z]/i && s =~ /^[^aeiou]/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  n = s.to_i(2)
  s == "0" || (n != 0 && n % 4 == 0)
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    raise ArgumentError if isbn == "" || price <= 0
    @isbn = isbn
    @price = price
  end

  attr_accessor :isbn
  attr_accessor :price

  def price_as_string
    "$%.2f" % @price
  end
end
