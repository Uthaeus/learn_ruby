class Book

  def title 
    titleize(@title)
  end 

  def title= title 
    @title = title 
  end

  def titleize str
    lowers = ['a', 'an', 'the', 'and', 'in', 'of']
    arr = str.split(' ')
    result_arr = []

    first = arr[0]
    rest = arr[1..-1]

    if arr.length == 1
      result = first.capitalize
    else
      result_arr << first.capitalize

      rest.each do |word|
        if lowers.include?(word)
          result_arr << word
        else
          result_arr << word.capitalize
        end
      end
      result = result_arr.join(' ')
    end
    result 
  end 

end


