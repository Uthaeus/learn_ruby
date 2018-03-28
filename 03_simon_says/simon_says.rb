
def echo str 
  str
end

def shout str 
  str.upcase
end

def repeat str, num = 2
  result = []
  num.times do 
    result << str 
  end
  result.join(' ')
end

def start_of_word str, num 
  arr = str.split(//)
  result = arr[0...num]
  result.join('')
end

def first_word str 
  arr = str.split(' ')
  arr[0]
end

def titleize str 
  arr = str.split(' ')
  result = []

  first = arr[0]
  rest = arr[1..-2]
  last = arr[-1]
  
  if arr.count == 1 
    result = first.capitalize
  elsif arr.count == 2 
    result = first.capitalize + " " + last.capitalize
  else 
    
    result << first.capitalize
    
    rest.each do |word|
      if word.length > 4
        result << word.capitalize 
      else 
        result << word 
      end 
    end 
    result << last.capitalize
    result = result.join(' ')
  end
  result 
end
