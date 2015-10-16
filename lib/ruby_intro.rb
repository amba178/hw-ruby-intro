# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return !arr.empty? ? arr.reduce(:+) : 0
end

def max_2_sum arr
  return !arr.empty? && arr.size >=2 ? sum(arr.sort!.pop(2)) : arr[0] || 0 
end

def sum_to_n? arr, n
  arr.combination(2).to_a.each{ |ar| return true if sum(ar) == n }
  return false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  return s=~/^[^aeiou\W]/i ? true : false 
end

def binary_multiple_of_4? s
  return false if s=~/\A[\D]/ || s.empty?
  s.to_i(2)%4==0  ? true : false
end


# puts binary_multiple_of_4?('a100')
#  puts binary_multiple_of_4?(' ')
# puts binary_multiple_of_4?('100')
# # Part 3

class BookInStock
	attr_reader :price, :isbn 

	def initialize(isbn="", price=0 )
		self.isbn = isbn  
		self.price = price.to_f 
	end
    
    def isbn=(isbn)
    	raise ArgumentError, "Invalide isbn number" if isbn.empty? 
        @isbn = isbn
    end

    def price=(price)
        raise ArgumentError, "Invalide price tag" if price <= 0 
        @price = price 
    end


    def price_as_string
		"$"<<price_formater
	end

	private
		def price_formater
			sprintf("%.2f", @price)
		end
end
