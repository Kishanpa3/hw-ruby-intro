# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return arr.sum()
end

def max_2_sum arr
  return arr.sort().reverse().take(2).sum()
end

def sum_to_n? arr, n
  arr.permutation(2).to_a.each do |pair|
    if pair.sum == n then
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if s.length == 0 then
    return false
  end
  if not s[0].upcase =~ /[A-Z]/ then
    return false
  end
  if s[0].upcase =~ /[AEIOU]/ then
    return false
  end
  return true
end

def binary_multiple_of_4? s
  if s.length == 0 then
    return false
  end
  
  s.chars.each do |bit|
    if bit == '1' or bit == '0' then
    else
      return false
    end
  end
  
  
  return s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn.length == 0 then
      raise ArgumentError
    end
    if price <= 0 then
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  def isbn=(num)
    @isbn = num
  end
  
  def isbn
    @isbn
  end
  
  def price=(num)
    @price = num
  end
  
  def price
    @price
  end
  
  def price_as_string
    return "$%0.2f" % [price]
  end
  
end
