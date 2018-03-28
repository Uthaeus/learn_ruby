
def translate str
  vowels = ['a', 'e', 'i', 'o']
  result_arr = []
  my_arr = str.downcase.split(' ')

  my_arr.each do |item|
    my_item = item.split(//)
    if vowels.include?(my_item[0])
      result_arr << my_item.join('') + 'ay'
    else 
      x = 0
      until vowels.include?(my_item[x])
        my_item = my_item.push(my_item.shift) 
        
      end
      x += 1
      result_arr << my_item.join('') + 'ay'
    end
  end
  result_arr.join(' ')
end















