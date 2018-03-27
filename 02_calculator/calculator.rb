
def add num1, num2
  num1 + num2
end

def subtract num1, num2
  num1 - num2
end

def sum arr
  if arr.length < 1
    result = 0
  else
    result = arr.reduce(:+)
  end
  result
end

def multiply *nums
  result = []
  nums.each do |num|
    result << num 
  end
  result.inject(:*)
end

def power num1, num2
  num1 ** num2
end

def factorial num 
  range = (1..num).to_a

  if num >= 0 && num <= 1
    result = 1
  else
    result = range.inject(:*)
  end
  result
end
