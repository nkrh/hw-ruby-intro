# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  x = 0
  arr.each do |y|
    x += y
  end
  x
end

def max_2_sum arr
  sum arr.sort.reverse.take(2)
end

def sum_to_n? arr, n
  arr.permutation(2) do |a|
    (sum a) == n and return true
  end
  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  s = s.to_s
  not s.empty? and ("BCDFGHJKLMNPQRSTVWXYZ".include?(s[0].upcase))
end

def binary_multiple_of_4? s
   !(/^[01]+$/ =~ s).nil? and !(/[01]+(?<!11|10|01|1)$/ =~ s.to_s).nil?
end

# Part 3

class BookInStock
  
  def initialize(isbn, price)
    self.price = price
    self.isbn = isbn
  end
  
  def price_as_string
    '$%.2f' % @price
  end
  
  def price
    @price
  end
  
  def price=(new_price)
    if new_price <= 0
      raise ArgumentError
    else
      @price = new_price  
    end
  end
  
  def isbn
    @isbn
  end
  
  def isbn=(new_isbn)
    if (new_isbn =~ /^[a-z0-9\-]+$/i).nil?
      raise ArgumentError
    else
      @isbn = new_isbn
    end
  end
  
end
