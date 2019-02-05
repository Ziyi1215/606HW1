# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  _sum = 0;
  for _i in 0..arr.size - 1
    _sum += arr.at(_i);
  end
  return _sum;
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.size == 0    # no number case
    return 0
  elsif arr.size == 1 # only one number case
    return arr[0]
  else                # general case
    arr.sort!;
    arr.reverse!;
    return (arr.at(0)+arr.at(1));
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  _h = Hash.new
  _i = 0
  _b = false
  while _i < arr.size do
    if _h[arr[_i]] == true      # find if n - arr[i] exist in the array
      _b = true
      break
    else
      _h[n - arr[_i]] = true    # save n - arr[i]
    end
	_i += 1
  end
  return _b
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.size == 0  # no letter
    return false
  end
  _constr = Array["a","e","i","o","u"]
  str = s.dup
  str.downcase!
  _start = str[0]
  if _start < "a" || _start > "z"
    return false
  end
  return !_constr.include?(_start)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  _b = true
  if(s.length == 0)
    _b = false
  end
  # check binary
  for _i in 0..s.length - 1
    if s[_i] < '0' || s[_i] > '1'
      _b = false
    end
  end
  _bn = s.to_i(2) # binary string to int
  if _bn % 4 != 0
    _b = false
  end
  return _b
end

# Part 3

class BookInStock
# YOUR CODE HERE
  # set variables 
  attr_accessor :isbn
  attr_accessor :price
  def initialize(isbn, price)
	# reject invalid value
    if isbn == ""
      raise ArgumentError, "ISBN number cannot be empty."
    end
    if price <= 0.0
      raise ArgumentError, "price cannot be negative."
    end
    @isbn=isbn.to_s
    @price=price
  end
  
  def price_as_string
	  return "$#{("%#.2f" % price)}" # two decimal place
  end
end
