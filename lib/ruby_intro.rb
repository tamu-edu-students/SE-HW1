# frozen_string_literal: true

# Part 1
def sum(arr)
  sum=0    
  arr.each{|i| sum+=i}
  return sum
end


def max_2_sum(arr)
  l=arr.length
  if(l==0)
    res= 0
  elsif(l==1)
    res= arr[0]
  else
    arr=arr.sort
    res= arr[l-1]+arr[l-2]
  return res
  end
end

def sum_to_n?(arr, number)
  return false if arr.empty? 
  arr.combination(2).any? {|i, j| i + j == number }
end


# Part 2
def hello(name)
  return "Hello, "+(name)
end

def starts_with_consonant?(string)
  if /^[^aeiou\W]/i.match(string) == nil
    return false
  else
    return true
  end  
end

def binary_multiple_of_4?(string)
  return true if string == "0"
	if /^[10]*00$/.match(string) != nil
    return true
  else
    return false
  end
end

# Part 3
# Object representing a book
class BookInStock
  attr_accessor :isbn
	attr_accessor :price

	def initialize(isbn, price)
		raise ArgumentError, 
			"Illegal argument" if isbn.empty?  or price <= 0
		@isbn = isbn
		@price = price
	end

	def price_as_string
		sprintf("$%2.2f", @price)
	end
end