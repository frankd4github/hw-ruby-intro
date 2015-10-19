# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.reduce(0,:+)
  
#  sum = 0
#  arr.each { |e|
#    sum += e
#  }
#  sum
end

def max_2_sum arr
  # YOUR CODE HERE 
  arr.max(2).reduce(0,:+)
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  i = 0
  while i < arr.length - 1
    j = i +1
    while j < arr.length
      if arr[i] + arr[j] >= n
        return true
      end
      j += 1
    end
    i += 1
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return false if s.empty?
  return false if not (('a'..'z').include? s[0].downcase)
  not ("aeiou".include? s[0].downcase)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return true if s == '0'
  return false if s.length < 3
  return false if s.gsub('0','').gsub('1','').length != 0
  s[-1] == '0' && s[-2] == '0'
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  attr_writer :isbn, :price
  def initialize( isbn, price)
    raise ArgumentError if isbn.length == 0 || price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    sprintf("$%.2f", price)
  end
end
