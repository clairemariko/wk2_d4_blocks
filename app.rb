


def add_one(items) #REMEMEBER TO PASS THE PARAMETER!!!!
  result = []
  for item in items
    result << item + 1
  end
  return result

end

#firstly so you are creating a new array, because your result will need to be stored somewhere. a for loop is for i in items, so you are going into the array and taking the values. now the maths, each item adds one but within this line we can also push the new array into the result which we have already defined as a new array. return the new result. 
#for is specifically made for looping over a collection. 


def multiply_by_two(items) 
  result = []
  for item in items
    result << item * 2
  end
  return result

end


  def up_to_you()
    return yield("Hello") 
 end

 def doing_stuff()
  return yield(+ 10)
end

# def doing_more_stuff(item)
#   result[]
#   for item in items
#     result << yield + 1
#   end
#   return result
# end

def map(items)
  result = []
  for item in items
    result << yield(item)
  end
  return result
end




